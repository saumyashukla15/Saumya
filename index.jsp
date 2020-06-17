

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
           background: linear-gradient(#00c6a7,#1e4d92); 
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
    </style>
    
    <body>
        <header class="headerside">
            <nav>
                <div class="logo">
                    <h2>Shopping</h2>
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="index.jsp" style="color: white">Home</a></li>
                        <li><a href="signin.jsp" style="color: white">Login Or Register</a></li>
                        <li><a href="#" style="color: white">About Us</a></li>
                        <li>Contact Us</li>
                    </ul>
                </div>
            </nav>
            <section>
                <div class="leftsec">
                    <img src="folder/logo_1.jpg">
                </div>
                <div class="rightsec">
                    <h1>Shopping Website</h1>
                    <p>Best Shopping Website</p>
                    <button><a href="SignUp.jsp" style="color: white">Welcome</a></button>
                </div>
            </section>
        </header>
    </body>
</html>
