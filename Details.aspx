<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <style>
    footer
        {
           background-color:#e8e4d8;
           
    width: 100%;
    margin-top:150px;
        }
        body
        {
            background:url('images/dashboardbg.jpg');
            background-size: cover;
            
            background-repeat:no-repeat;    
        }
        #main-box
        {
            width:600px;
            border:0px solid black; 
            padding:50px;
            margin:80px 380px;
            background-color:rgba(255,255,255,0.9);
           
        }
        h2
        {
            font-size:28px;
            font-family:Times New Roman;
            font-weight:bold;    
        }
        #breadcrumb
        {
            width:600px;
            margin:30px 380px;
            font-size:20px;
            }
    </style>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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


<nav aria-label="breadcrumb" id="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="View_Details.aspx">View Details</a></li>
    <li class="breadcrumb-item active" aria-current="page">Details</li>
  </ol>
</nav>

<div class="container" id="main-box">
<h2>Update OR Delete Data!</h2>
    <form id="form1" runat="server" class="row g-3">
    <div class="col-md-6">
        Name:
        <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Name is a required field." ControlToValidate="TextBox2" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="col-md-6">
        Contact:
        <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Contact is a required field." ControlToValidate="TextBox3" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter a valid contact number" 
            ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
    </div>
    <div class="col-12">
        Address:
        <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br />
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Address is a required field." ControlToValidate="TextBox4" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="col-12">
        Class:
        <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label><br />
        <asp:RequiredFieldValidator runat="server" 
            ErrorMessage="Class is a required field." ControlToValidate="TextBox5" 
            ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
     <div class="col-12">
        Email:
        <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label><br />
         <asp:RequiredFieldValidator runat="server" 
             ErrorMessage="Email is a required field." ControlToValidate="TextBox6" 
             ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
             ControlToValidate="TextBox6" ErrorMessage="Enter a valid mail ID." 
             ForeColor="Red" 
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </div>
      <div class="col-md-6">
        Age:
        <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label><br />
          <asp:RequiredFieldValidator runat="server" 
              ErrorMessage="Age is a required field." ControlToValidate="TextBox7" 
              ForeColor="Red"></asp:RequiredFieldValidator>
          <br />
          <asp:RangeValidator ID="RangeValidator1" runat="server" 
              ControlToValidate="TextBox7" ErrorMessage="Age is out of range." 
              ForeColor="Red" MaximumValue="18" MinimumValue="3" Type="Integer"></asp:RangeValidator>
     </div>
     <div class="col-md-6">
        Gender:
        <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
         <asp:RequiredFieldValidator runat="server" 
             ErrorMessage="Gender is a required field." ControlToValidate="TextBox8" 
             ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
      <div class="col-12">
        <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-400 rounded text-lg"/>
        <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" class="text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-400 rounded text-lg"/>
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