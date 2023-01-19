<%@page import="java.sql.*" %>
<%
		String s1 = request.getParameter("u1");
		
		try
		{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        String db_url="jdbc:mysql://localhost:3306/ram?useSSL=false&allowPublicKeyRetrieval=true";
                        String db_uname="root";
                        String db_upass="root";
                        Connection con = DriverManager.getConnection(db_url,db_uname,db_upass);
			Statement st = con.createStatement();
			String s11 = "insert into nregis(your_data) values('"+s1+"')";
			st.executeUpdate(s11);
			response.sendRedirect("Insert.jsp?s1=your data has been submitted");
			con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}	
%>