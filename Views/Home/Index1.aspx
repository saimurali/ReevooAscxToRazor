<%@Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Register TagPrefix="reevoo" Namespace="ReevooMark" Assembly="ReevooMark" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Index</title>
	<reevoo:CssAssets  runat="server" />
</head>
<body>
    <div>
      The current date and time is
      <%=DateTime.Now %>
    </div>

    <div>
      Here come the badges...

      <p>Product</p>
      <reevoo:ProductBadge sku="SONDSCR1" runat="server"/>

      <reevoo:ProductReviews numberOfReviews="3" sku="SONDSCR1" paginated="true" runat="server">
      	<p>Sorry we don't have any reviews available right now</p>
      </reevoo:ProductReviews>
    </div>
    <reevoo:JavascriptAssets runat="server" />
    <reevoo:CssAssets  runat="server" />
</body>
</html>