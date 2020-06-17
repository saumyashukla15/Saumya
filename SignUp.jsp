<%@page import="java.sql.*;"%>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Registration form</title>
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
              margin-bottom: 60px;
              border-radius: 5%;
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
              margin-top: 100px;
              margin-bottom: 10px;
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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
       function a(){
            swal("Done!", "Sign-In successfully!", "success");
        }
        </script>

        <div class="container">
            <div class="row">
                <div class="col-md-10 ">
                    <div class="row">
                        <div class="col-md-5 register-left">
                            <figure><img src="folder\register.jpg"></figure>
                            <a href="signin.jsp" style="color: white">I am already a member</a>
                        </div>
                        <div class="col-md-7 register-right">
                            <h3>Sign Up</h3>
                            <form action="SignUp.jsp">
                            <div class="register-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name" name="name">
                            </div>
                            <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Phone number" name="phone">
                            </div>    
                            <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email" name="email">
                            </div>
                            <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Create Password" name="password">
                            </div>
                            <div class="form-group">
                                <input type="checkbox" />
                                <label><span><span></span></span>I agree all statements in  <a href="#">Terms of service</a></label>
                            </div>
                                <input type="submit" class="btn btn-primary" value="Register" onclick="a()">
                        </div>
                      </form>
                    </div>
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
              
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String pass=request.getParameter("password");
                
    
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection(server,username,password);
    if(!cn.isClosed()){

                    PreparedStatement ps=cn.prepareStatement("insert into saumya(name,phone,email,password)values(?,?,?,?)");
                    ps.setString(1,name);
                    ps.setString(2,phone);
                    ps.setString(3,email);
                    ps.setString(4,pass);
                    ps.executeUpdate();
                    
                   
                }
                cn.close();
            }
            catch(Exception e){
                out.println("error"+e.getMessage());
            }
       }
%>