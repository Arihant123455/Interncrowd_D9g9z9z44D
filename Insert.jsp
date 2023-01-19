<html>
<style>

body
{
background-image:url('sim5.png');
background-size:100%;
background-repeat:no-repeat;
}
</style>
<head>
<link rel="stylesheet" href="xyz.css">
</head>

<body>
<div id="data">
<center>
        <%
      String s1 = request.getParameter("s1");
     if(s1!=null)
{
%>
<h3>
    <%= s1%>
    <% } %></h3>
<form action="InsertDemo.jsp">
<table cellpadding="15px">

<tr>
    <td><h1>Online Survey Form.<h1>
</tr>
<tr><td><h1>Why Should We Keep Our City Clean ?<h1></td></tr>
<td><h3>1.Health reasons.<h3><td>
            <tr><td><h3>2.Kill Mosquitoes.<h3><td></tr>
                            <tr><td><h3>3.Pure air.<h3><td></tr>
                                            <tr><td><h3>4.Clean water.<h3><td></tr>

<tr>
<td><h2>Write Your Option Number</h2></td>
<td> <input type="text" placeholder="write in number" name="u1"> </td>
</tr>

<tr>
<td align="center" colspan="2">
    <input class="B" type="submit" value="Insert Data" </td>
</tr>

</table>
</form>
</center>
</div>

</body>
</html>
