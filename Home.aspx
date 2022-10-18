<%@ Page Title="Home" Language="C#" MasterPageFile="~/UserMaster/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Pizza.UserMaster.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="carouselExampleIndicators"  class="carousel slide" data-ride="carousel"
         data-interval="1000" >
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../Images/img1.jpg" alt="First slide" style="width:800px;height:600px;">
         <div class="carousel-caption d-none d-md-block">
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../Images/img2.jpg" alt="Second slide" style="width:800px;height:600px;">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../Images/im3.jpg" alt="Third slide" style="width:800px;height:600px;">
    </div>
       <div class="carousel-item">
      <img class="d-block w-100" src="../Images/img5.jpg" alt="Fourth slide" style="width:800px;height:600px;">
    </div>
       <div class="carousel-item">
      <img class="d-block w-100" src="../Images/img6.jpg" alt="Fifth slide" style="width:800px;height:600px;">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</asp:Content>
