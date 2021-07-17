<%
String username1=request.getParameter("username");
String password1=request.getParameter("password");
    
if(username.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("admin"))
{
    responde.sendRedirect("adminHome.jsp");
}
else
responde.sendRedirect("errorAdminLogin.html");

%>