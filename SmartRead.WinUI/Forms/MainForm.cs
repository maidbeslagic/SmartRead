﻿using SmartRead.WinUI.Forms.Kategorije;
using SmartRead.WinUI.Helpers;
using System;
using System.Windows.Forms;

namespace SmartRead.WinUI.Forms
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            updateUI();
        }

        private void updateUI()
        {
            Show();
            var korisnik = APIService.PrijavljeniKorisnik;
            if (korisnik == null)
            {
                this.Close();
                return;
            }
            this.Text = $"SmartRead Administracija - Welcome, {korisnik.Ime}";
        }

        private void MdiFormParentChangedHandler(object sender, EventArgs args)
        {
            var form = sender as Form;
            if (form != null)
            {
                if (form.MdiParent != null)
                {
                    logoImage.Visible = false;
                }
                else
                {
                    form.ParentChanged -= MdiFormParentChangedHandler;
                    if (this.MdiChildren.Length == 0)
                        logoImage.Visible = true;
                }
            }
        }

        private void CloseLatestChild()
        {
            if (this.MdiChildren.Length > 0)
            {
                var index = MdiChildren.Length - 1;
                MdiChildren[index].Close();
            }
        }

        private void prikažiKategorijeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frm = new KategorijeForm();
            this.IsMdiContainer = true;
            CloseLatestChild();
            frm.ParentChanged += MdiFormParentChangedHandler; frm.MdiParent = this;
            frm.Show();
            frm.WindowState = FormWindowState.Minimized;
            frm.WindowState = FormWindowState.Maximized;
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (var child in MdiChildren)
            {
                child.Close();
            }

            Hide();

            var loginForm = new LoginForm();

            if (loginForm.ShowDialog() == DialogResult.OK)
            {
                updateUI();
            }
            else
            {
                Close();
            }
        }
    }
}
