<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String e = request.getParameter("email1");
    String p = request.getParameter("password1");
    int count=0;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select email,password from user");
    while(rs.next())
    {
        if(e.equals(rs.getString(1)))
        {
            if(p.equals(rs.getString(2)))
            {
                 count=1;
            }
        }
    }
    if(count==1)
    {
        out.println("successfully logged in");
    }
    else
    {
        out.println("invalid credentials");
    }
    }
    catch(Exception ae)
    {
    out.println(ae);}
%>
