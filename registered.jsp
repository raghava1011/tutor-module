<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
	<%
           String u =request.getParameter("username1");
           String d=request.getParameter("date1");
           String g=request.getParameter("Gender1");
           String a=request.getParameter("address1");
           String e=request.getParameter("email1");
           String pass=request.getParameter("password1");
           String phone=request.getParameter("phonenumber1");
           int count = 0;
           out.println(u);
           out.println(d);
           out.println(g);
           out.println(a);
           out.println(e);
	   try{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");
	   Statement st = con.createStatement();
	   ResultSet rs = st.executeQuery("select * from user");
           while(rs.next())
           {
               count= count+1;
           }
           String uid = String.valueOf(count);
	   int i=st.executeUpdate("insert into user(name,dob,gender,address,phone,email,password,userid) values('"+u+"','"+d+"','"+g+"','"+a+"','"+phone+"','"+e+"','"+pass+"','"+uid+"')");
           if(i==1)
           {
               out.println("registered successfully");
           }
    }
    catch(Exception ae){
    out.println(ae);
};
	%>
