<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp"%>
<%@page import="java.util.List"%>
<%@page import="com.tingyi.wang.booking.entity.Route"%>
<%@page import="com.tingyi.wang.booking.dao.RouteDao"%>
<title>Select Route</title>

</head>
<body>
	<div class="container">
		<h2 align="center">线路选择</h2>
		<div class="table-responsitive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>线路序号</th>
						<th>始发地</th>
						<th>终点</th>
						<th>选择</th>
					</tr>
				</thead>
				<tbody>
						<%
						RouteDao routeDao = new RouteDao();
						List<Route> routes = routeDao.getRoutes();
						for (Route route:routes) {
							out.println("<tr>");
							out.println("<td>THU No." + route.getId() + "</td>");
							out.println("<td>" + route.getStart() + "</td>");
							out.println("<td>" + route.getEnd() + "</td>");
							out.println("<td><a href=\"Schedule?id=" + route.getId() + "\" class=\"btn btn-primary\" role=\"button\">选择</a></td>");
							out.println("</tr>");
						}
						%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>