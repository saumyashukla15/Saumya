<%@page import="java.sql.*;"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>login form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
      </head>
      <style>
          body{
              background-image: linear-gradient(57deg,#00c6a7,#1e4d92);
              margin-top: 150px !important;
              margin-left: 120px;
          }
          .register-left{
              color: white;
              font-size: x-large;
              text-justify: auto;
              text-align: center;
                  
          }
          .register-right{
              border:none;
              background: whitesmoke;
              padding: 40px;
              border-radius: 5%;
              margin-bottom: 80px;
              border-top-left-radius: 10% 50%;
              border-bottom-left-radius: 10% 50%;
              

          }
          .register-right h3{
              text-align: center;
              margin-bottom: 10px;
              color:black;
              margin-top: 10px;
              font-size: 40px;
          }
          .register-form{
              padding: 50px;
             
              
          }
          .register-right .btn-primary{
              float: left;
              border-radius: 2rem;
              border: none;
              background: orange;
              font-weight: 600;
              width: 130px;
              color: #555;
              margin-top: 20px;
              padding: 10px;
          }
          .register-right .btn-primary:hover{
              background: #ff5722;
          }
          .register-left img{
              margin-top: 25px;
              margin-bottom: 20px;
              width: 350px;
              border-radius: 5%;
              border-top-right-radius: 10% 50%;
              border-bottom-right-radius: 10% 50%;
             opacity: 0.5;
          }
          @keyframes mover{
              0%{transform: translateY(0);}
              100%{transform: translateY(-20px);}
              
          }
          
      </style>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-10 ">
                    <div class="row">
                        <div class="col-md-5 register-left">
                            <figure><img src="folder\signup-image.jpg"></figure>
                            <a href="SignUp.jsp" style="color: white">Create my account</a>
                        </div>
                        <div class="col-md-7 register-right" onload='document.form1.email.focus()'>
                            <h3>Sign In</h3>
                            <form action="signin.jsp" method="post" name="form1">
                            <div class="register-form">
                                
                            <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email" name="email">
                            </div>
                            <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Enter Password" name="pass">
                                    
                            </div>
                                <div class="form-group">
                                <input type="checkbox">
                                <label for="remember-me" ><span><span></span></span><a href="genotp.jsp">Forgot Password</a></label>
                            </div>

                                <input type="submit" class="btn btn-primary" value="Login " onclick="ValidateEmail(document.form1.email)">
                        </div>
                            </form>
                    </div>
                        <script src="email-validation.js"></script>
                </div>
            </div>
        </div>
    
    </body>
</html>
<%
    
     if(request.getParameter("email")!=null)
       { 
        String server="jdbc:mysql://127.0.0.1:3306/assignment";
        String username="root";
        String password="1234";
              
           String email=request.getParameter("email");
           String pass=request.getParameter("pass");
           
                
    
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection(server,username,password);
    if(!cn.isClosed()){

                    PreparedStatement ps=cn.prepareStatement("select * from saumya where email='"+email+"' AND password='"+pass+"'");
//                    ps.setString(1, email);
//                    ps.setString(2, pass);
                    ResultSet rs= ps.executeQuery();
                    if(rs.next()){
                        session.setAttribute("email",email);
                        response.sendRedirect("dashboard.jsp");
                    }
                    else{
                        out.println("incorrect password");
                    }
                    
                   
                }
                cn.close();
            }
            catch(Exception e){
                out.println("error"+e.getMessage());
            }
       }
%>