<%@ WebHandler Language="C#" Class="ImageHandler" %>
using System;
using System.Web;
using System.Linq;

public class ImageHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
	string s;
	if (context.Request["s"] != null)
	{
		s = "Hello " + context.Request["s"].ToString();
	}else{
		s = "missing search";
	}

        context.Response.Write(s);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}