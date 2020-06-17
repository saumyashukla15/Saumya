

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    String e=(String)session.getAttribute("email");
    if(e==null)
    {
        response.sendRedirect("index.jsp");
    }
    else
    {}
    %>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        *{margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: sans-serif;
        }
        .headerside{
           width: 100%;
           height: 100vh;
           background: linear-gradient(57deg,#00c6a7,#1e4d92);
           clip-path: polygon(0% 0%, 100% 0%, 100% 85%, 0% 100%);
        }
        nav{
            width: 100%;
            height: 100px;
            display: flex;
            color: white;
        }
        .logo{
            width: 50%; height: 100px;
        }
        .logo h2{line-height: 100px; padding-left: 50px;}
        .menu{width: 50%;height: 100px;}
        .menu ul{
          width: 100%;
          height: 100px;
          display: flex;
          flex-direction: row;
          justify-content: space-around;
          align-items: center;
        }
        .menu ul li{
            list-style: none;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
        }
        section{
            display: flex;
        }
        .leftsec{
            width: 45%;
            height: auto;
            overflow: hidden;
            margin-top: 20px;
        }
        .leftsec img{
            width: 600px;
            height: 500px;
            opacity: 0.5;
            backface-visibility: hidden;
        }
        .rightsec{
            width: 55%;
            height: 300px;
            color: white;
            text-align: center;
            margin-top: 80px;
            padding: 40px;
        }
        .rightsec h1{
            font-size: 50px;
            font-weight: bold;
            text-transform: uppercase;
        }
        .rightsec p{
            font-size: 1.1rem;padding: 30px 0;
        }
        .rightsec button{
            font-size: 17px;
            font-weight: bold;
            color: white;
            text-transform: uppercase;
            background: linear-gradient(57deg,#00c6a7,#1e4d92);
            border-radius: 4px;
            padding: 20px 35px;
        }
        .rightsec button:hover{
             background: linear-gradient(57deg,#1e4d92,#00c6a7);
        }
        .topnav {
  overflow: hidden;
  background: linear-gradient(57deg,#00c6a7,#1e4d92);;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.active {
  background: linear-gradient(57deg,#00c6a7,#1e4d92);;
  color: white;
}

.topnav .icon {
  display: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 17px;    
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.topnav a:hover, .dropdown:hover .dropbtn {
  background-color: #555;
  color: white;
}

.dropdown-content a:hover {
  background-color: #ddd;
  color: black;
}

.dropdown:hover .dropdown-content {
  display: block;
}


    </style>
    
    <body>
        <header class="headerside">
            <nav>
                <div class="logo">
                    <h2>Shopping</h2>
                </div>
                <div class="menu">
                    <div class="topnav" id="myTopnav">
                            <a href="index.jsp" class="active">Home</a>
                            <a href="#">Profile</a>
                            <a href="Status.jsp">Orders</a>
                            <div class="dropdown">
                              <button class="dropbtn">Order Status 
                                <i class="fa fa-caret-down"></i>
                              </button>
                              <div class="dropdown-content">
                                <a href="#">Placed</a>
                                <a href="#">Shipped</a>
                                <a href="#">Delivered</a>
                                <a href="#">Return</a>
                              </div>
                            </div> 
                            <a href="#">About Us</a>

                </div>
            </nav>
            <section>
                <div class="leftsec">
                    <img src="folder/logo_1.jpg">
                </div>
                <div class="rightsec">
                    <h1>Shopping Website</h1>
                    <p>Best Shopping Website</p>
                    <button>Welcome</button>
                </div>
            </section>
        </header>
    </body>
</html>
