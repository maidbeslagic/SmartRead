﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using SmartRead.API.Database.Context;

namespace SmartRead.API.Migrations
{
    [DbContext(typeof(SmartReadContext))]
    partial class SmartReadContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.11")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("SmartRead.API.Database.Administrator", b =>
                {
                    b.Property<int>("Id")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Administratori");
                });

            modelBuilder.Entity("SmartRead.API.Database.Clanak", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("AutorId")
                        .HasColumnType("int");

                    b.Property<double>("Cijena")
                        .HasColumnType("float");

                    b.Property<string>("Naslov")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Obrisan")
                        .HasColumnType("bit");

                    b.Property<int?>("OdobravateljId")
                        .HasColumnType("int");

                    b.Property<bool>("Odobren")
                        .HasColumnType("bit");

                    b.Property<byte[]>("Slika")
                        .HasColumnType("varbinary(max)");

                    b.Property<string>("Text")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("AutorId");

                    b.HasIndex("OdobravateljId");

                    b.ToTable("Clanci");
                });

            modelBuilder.Entity("SmartRead.API.Database.Drzava", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Naziv")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Drzave");
                });

            modelBuilder.Entity("SmartRead.API.Database.Kategorija", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Naziv")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Obrisan")
                        .HasColumnType("bit");

                    b.HasKey("Id");

                    b.ToTable("Kategorije");
                });

            modelBuilder.Entity("SmartRead.API.Database.Korisnik", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("DatumRegistracije")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("DatumRodjenja")
                        .HasColumnType("datetime2");

                    b.Property<int>("DrzavaId")
                        .HasColumnType("int");

                    b.Property<string>("Ime")
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("Kredit")
                        .HasColumnType("float");

                    b.Property<string>("Mail")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Obrisan")
                        .HasColumnType("bit");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PasswordSalt")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Prezime")
                        .HasColumnType("nvarchar(max)");

                    b.Property<byte[]>("Slika")
                        .HasColumnType("varbinary(max)");

                    b.Property<string>("Username")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("DrzavaId");

                    b.ToTable("Korisnici");
                });

            modelBuilder.Entity("SmartRead.API.Database.KorisnikKategorija", b =>
                {
                    b.Property<int>("KorisnikId")
                        .HasColumnType("int");

                    b.Property<int>("KategorijaId")
                        .HasColumnType("int");

                    b.Property<DateTime>("DatumPretplate")
                        .HasColumnType("datetime2");

                    b.Property<bool>("Obrisan")
                        .HasColumnType("bit");

                    b.HasKey("KorisnikId", "KategorijaId");

                    b.HasIndex("KategorijaId");

                    b.ToTable("KorisnikKategorije");
                });

            modelBuilder.Entity("SmartRead.API.Database.KorisnikPrijava", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ClanakId")
                        .HasColumnType("int");

                    b.Property<int>("KorisnikId")
                        .HasColumnType("int");

                    b.Property<string>("Opis")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("Pregledano")
                        .HasColumnType("bit");

                    b.Property<bool>("Uvazeno")
                        .HasColumnType("bit");

                    b.Property<DateTime>("VrijemePrijave")
                        .HasColumnType("datetime2");

                    b.Property<int>("VrstaPrijave")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("ClanakId");

                    b.HasIndex("KorisnikId");

                    b.ToTable("KorisnikPrijave");
                });

            modelBuilder.Entity("SmartRead.API.Database.Uplata", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<float>("Iznos")
                        .HasColumnType("real");

                    b.Property<int>("KorisnikId")
                        .HasColumnType("int");

                    b.Property<string>("Opis")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("KorisnikId");

                    b.ToTable("Uplate");
                });

            modelBuilder.Entity("SmartRead.API.Database.Administrator", b =>
                {
                    b.HasOne("SmartRead.API.Database.Korisnik", "Korisnik")
                        .WithOne("Administrator")
                        .HasForeignKey("SmartRead.API.Database.Administrator", "Id")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();
                });

            modelBuilder.Entity("SmartRead.API.Database.Clanak", b =>
                {
                    b.HasOne("SmartRead.API.Database.Korisnik", "Autor")
                        .WithMany("Clanci")
                        .HasForeignKey("AutorId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();

                    b.HasOne("SmartRead.API.Database.Administrator", "Odobravatelj")
                        .WithMany("OdobreniClanci")
                        .HasForeignKey("OdobravateljId")
                        .OnDelete(DeleteBehavior.Restrict);
                });

            modelBuilder.Entity("SmartRead.API.Database.Korisnik", b =>
                {
                    b.HasOne("SmartRead.API.Database.Drzava", "Drzava")
                        .WithMany()
                        .HasForeignKey("DrzavaId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();
                });

            modelBuilder.Entity("SmartRead.API.Database.KorisnikKategorija", b =>
                {
                    b.HasOne("SmartRead.API.Database.Kategorija", "Kategorija")
                        .WithMany()
                        .HasForeignKey("KategorijaId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();

                    b.HasOne("SmartRead.API.Database.Korisnik", "Korisnik")
                        .WithMany("PretplaceneKategorije")
                        .HasForeignKey("KorisnikId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();
                });

            modelBuilder.Entity("SmartRead.API.Database.KorisnikPrijava", b =>
                {
                    b.HasOne("SmartRead.API.Database.Clanak", "Clanak")
                        .WithMany("Prijave")
                        .HasForeignKey("ClanakId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();

                    b.HasOne("SmartRead.API.Database.Korisnik", "Korisnik")
                        .WithMany("PrijavljeniClanci")
                        .HasForeignKey("KorisnikId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();
                });

            modelBuilder.Entity("SmartRead.API.Database.Uplata", b =>
                {
                    b.HasOne("SmartRead.API.Database.Korisnik", "Korisnik")
                        .WithMany("Uplate")
                        .HasForeignKey("KorisnikId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
