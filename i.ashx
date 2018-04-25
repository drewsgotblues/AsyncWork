<%@ WebHandler Language="C#" Class="ImageHandler" %>
using System;
using System.Web;
using System.Linq;

public class ImageHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.Write("asdf");
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}