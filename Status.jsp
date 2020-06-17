

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%@ page import="java.sql.*" %>
                 
         <%
            
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/assignment","root","1234");
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

.content-table{
    border-collapse: collapse;
    margin: 30px 0;
    margin-left: 350px;
    font-size: large;
    min-width: 700px;
    border-radius: 5px 5px 0 0;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0,0,0,0.15);
    
    
}
.content-table thead tr{
    background-color: #009879;
    color: white;
    text-align: justify;
    font-weight: bold;
}
.content-table th,.content-table td{
    padding: 12px 15px;
}
.content-table tbody tr{
    border-bottom: 1px solid #f9f9f9;
}
.content-table tbody tr:nth-of-type(even){
    background-color: #f3f3f3;
}
.content-table tbody tr:nth-of-type{
    border-bottom: 2px solid #009879;
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
      
                    <table class="content-table">
                        <thead style="">
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Order no.</th>
                                <th>Order Name</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <% try {    
          
                
            PreparedStatement ps=cn.prepareStatement("select * from status");
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
                        %>
                        <tbody>
                            <tr>
                               <td style="text-align: justify">
                                           <%=rs.getString("name")%>
                                </td>
                                <td style="text-align: justify">
                                           <%=rs.getString("email")%>
                                </td>
                                <td style="text-align: justify">
                                           <%=rs.getInt("id")%>
                                </td>
                                <td style="text-align: justify">
                                           <%=rs.getString("oname")%>
                                </td>
                                
                            <td><select name="status">
                                        <option value="Placed">Placed</option>
                                        <option value="Shipped">Shipped</option>
                                        <option value="Delivered">Delivered</option>
                                        <option value="Return">Return</option>
                                </select></td></tr>
                        </tbody>
                        <%
             
            }
        }
        
        
        catch(Exception u)
        {
        out.println("Error occured"+u.getMessage());
        }
        %>
                    </table>
                
            </section>
        </header>
    </body>
</html>
