﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products_products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Products_datasource.SelectCommand = "SELECT [barcode], [name], [picture], [price] FROM [Product]";
    }
}