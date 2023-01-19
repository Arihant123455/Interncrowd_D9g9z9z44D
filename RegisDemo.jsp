<%@page import="java.sql.*" %>
<%
String s1 = request.getParameter("un");
String s2 = request.getParameter("up");
String s3 = request.getParameter("uc");
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String db_url="jdbc:mysql://localhost:3306/ram?useSSL=false&allowPublicKeyRetrieval=true";
    String db_uname="root";
    String db_upass="root";
    Connection con = DriverManager.getConnection(db_url,db_uname,db_upass);
    Statement st = con.createStatement();
    String s11 = "insert into nregis(name,pass,cont) values('"+s1+"','"+s2+"','"+s3+"')";
    st.executeUpdate(s11);
    response.sendRedirect("Insert.jsp");
    con.close();
}
catch(Exception e1)
{
    out.println(e1);
}
%>