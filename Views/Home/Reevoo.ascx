<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<mvcexample.Models.product>" %>
<%@ Register TagPrefix="reevoo" Namespace="ReevooMark" Assembly="ReevooMark" %>
<div>
    
    <script runat="server">

        protected void Page_Load(object sender, EventArgs e)
        {
            badge.Sku= Model.sku;
            badge.Trkref = Model.Trkef;
            reviews.NumberOfReviews = Model.ReviewsPerPage.ToString();
            reviews.Trkref = Model.Trkef;
            reviews.Sku = Model.sku;
            reviews.Paginated = Model.pagination.ToString();
        }
    
    </script>
 
       
        <reevoo:ProductBadge ID="badge" Sku="" Trkref="" runat="server" />


    <reevoo:ProductReviews ID="reviews" NumberOfReviews="" Trkref="" Sku="" Paginated="" runat="server">
        <p>Sorry we don't have any reviews available right now</p>
    </reevoo:ProductReviews>
</div>
<reevoo:JavascriptAssets runat="server" />
<reevoo:CssAssets runat="server" />