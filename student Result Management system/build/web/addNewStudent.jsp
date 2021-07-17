<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
    String course=request.getParameter("course");
    String branch=request.getParameter("branch");
    String rollNo=request.getParameter("rollNo");
    String nname=request.getParameter("nname");
    String fatherName=request.getParameter("fatherName");
    String gender=request.getParameter("gender");
    

try
{
    Connection con=Project.ConnectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("insert into student values ('"+course+"','"+branch+"','"+rollNo+"','"+nname+"','"+fatherName+"',)'"+gender+"')");
    response.sendRedirect("adminHome.jsp")
            
}
catch(Exception e)
{
    out.println(e);
}
    %>
    