<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Details.aspx.cs" Inherits="View_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <title>Student Registration System</title>
    <script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>
    <style>
        html
        {
            height:100%;
        }
        footer
        {
           background-color:#e8e4d8;
           margin-top: auto;
            bottom: 0px;
            position: relative;
            width: 100%;
        }
        nav
        {
            width:auto;
            top:0;
            position:absolute;
            }
        body{

            min-height: 100%;
            display: flex;
            flex-direction: column;
            background-color:#aff0e3;
        }
        #main-box
        {
            width:100%;
            margin-left : 25px;
            padding:0;
        }
        #grid2
        {
            margin-bottom:20px;
            }
        
        .Grid td
        {
            padding:12px;
            border:solid 1px #c1c1c1;    
        }
        .Grid th
        {
            padding:4px 2px;
            color:#fff;
            background: #363670 repeat-x top;
            border-left:solid 1px #525252;
            font-size:0.9em;
            text-align:center;
            }
        .Grid .alt
        {
            background:#fcfcfc repeat-x top;
            
            }
        .Grid .pgr {background: #363670 repeat-x top; }

.Grid .pgr table { margin: 3px 0; }

.Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  

.Grid .pgr a { color: Gray; text-decoration: none; }

.Grid .pgr a:hover { color: #000; text-decoration: none; }
        #heading
        {
            font-family:Algerian;
            font-weight:bold;
            font-size:24px;
            }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="nav">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Student Services</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="Home.aspx">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="View_Details.aspx">View Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Login.aspx">Log Out</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container" id="main-box">
<form id="Form1" class="row g-3" runat="server">
<h1 id="heading">Student Details:</h1>
  <div class="col-12">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" 
          CssClass="Grid" Width="600px">
          <AlternatingRowStyle CssClass="alt" />
          <Columns>
              <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                  SortExpression="ID" InsertVisible="False" />
              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="Contact" HeaderText="Contact" 
                  SortExpression="Contact" />
              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
              <asp:HyperLinkField Text="Get Details" DataNavigateUrlFields="ID" 
              DataNavigateUrlFormatString="Details.aspx?ID={0}" />
          </Columns>
          <PagerStyle CssClass="pgr" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:projectdbConnectionString %>" 
          SelectCommand="SELECT [ID], [Name], [Contact], [Email] FROM [registration]">
      </asp:SqlDataSource>
  </div>

  <div id="grid2">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
          CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
          ForeColor="#333333" AllowPaging="True" CssClass="Grid" Width="600px" 
          AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" CssClass="alt" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Age" HeaderText="Age" 
                SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" CssClass="pgr" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
          ConnectionString="<%$ ConnectionStrings:projectdbConnectionString %>" 
          DeleteCommand="DELETE FROM [registration] WHERE [ID] = @ID" 
          InsertCommand="INSERT INTO [registration] ([Name], [Contact], [Address], [Class], [Email], [Age], [Gender]) VALUES (@Name, @Contact, @Address, @Class, @Email, @Age, @Gender)" 
          SelectCommand="SELECT * FROM [registration]" 
          UpdateCommand="UPDATE [registration] SET [Name] = @Name, [Contact] = @Contact, [Address] = @Address, [Class] = @Class, [Email] = @Email, [Age] = @Age, [Gender] = @Gender WHERE [ID] = @ID">
          <DeleteParameters>
              <asp:Parameter Name="ID" Type="Int64" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="Name" Type="String" />
              <asp:Parameter Name="Contact" Type="String" />
              <asp:Parameter Name="Address" Type="String" />
              <asp:Parameter Name="Class" Type="String" />
              <asp:Parameter Name="Email" Type="String" />
              <asp:Parameter Name="Age" Type="String" />
              <asp:Parameter Name="Gender" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="Name" Type="String" />
              <asp:Parameter Name="Contact" Type="String" />
              <asp:Parameter Name="Address" Type="String" />
              <asp:Parameter Name="Class" Type="String" />
              <asp:Parameter Name="Email" Type="String" />
              <asp:Parameter Name="Age" Type="String" />
              <asp:Parameter Name="Gender" Type="String" />
              <asp:Parameter Name="ID" Type="Int64" />
          </UpdateParameters>
      </asp:SqlDataSource>
  </div>
</form>
</div>



      



<footer class="text-gray-600 body-font">
  <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
    <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
      </svg>
      <span class="ml-3 text-xl">Student Services</span>
    </a>
    <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">© 2020 Student Services —
      <a href="https://twitter.com/knyttneve" class="text-gray-600 ml-1" rel="noopener noreferrer" target="_blank">@services</a>
    </p>
    <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
      <a class="text-gray-500">
        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
          <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
          <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
          <circle cx="4" cy="4" r="2" stroke="none"></circle>
        </svg>
      </a>
    </span>
  </div>
</footer>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
  </body>

  </html>
