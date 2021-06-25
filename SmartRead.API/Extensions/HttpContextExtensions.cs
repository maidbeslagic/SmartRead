﻿using Microsoft.AspNetCore.Http;
using System;
using System.Linq;

namespace SmartRead.API.Extensions
{
    public static class HttpContextExtensions
    {
        public static int? GetUserId(this HttpContext httpContext)
        {
            if (httpContext.User == null)
            {
                return null;
            }

            return Convert.ToInt32(httpContext.User.Claims.Single(x => x.Type == "id").Value);
        }
    }
}
