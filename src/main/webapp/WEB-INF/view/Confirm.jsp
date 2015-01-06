<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp"%>
<%@page import="com.tingyi.wang.booking.entity.Schedule"%>
<%@page import="com.tingyi.wang.booking.dao.ScheduleDao"%>
<title>Info Confirmation</title>
</head>
<body>
	<div class="container">
		<h2 align="center">请确认您的订单</h2>
		<div class="table-responsitive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>班次序号</th>
						<th>出发时间</th>
						<th>到达时间</th>
						<th>您的名字</th>
						<th>确认</th>
					</tr>
				</thead>
				<tbody>
					<form role="form" action="Result" method="get">
						<%
							ScheduleDao scheduleDao = new ScheduleDao();
							int id = Integer.parseInt(request.getParameter("id"));
							Schedule schedule = scheduleDao.getScheduleById(id);
							out.println("<input type=\"text\" value=\"" + schedule.getId() + "\" name=\"id\" style=\"display:none\"/>");
							out.println("<tr>");
							out.println("<td>THU No." + schedule.getRouteId() + " Line."
									+ schedule.getId() + "</td>");
							out.println("<td>" + schedule.getTime() + ":00</td>");
							out.println("<td>" + (schedule.getTime() + 1) + ":00</td>");
							out.println("<td><input type=\"text\" name=\"name\" placeholder=\"请输入您的姓名\" class=\"form-control\"/></td>");
							out.println("<td>"
									+ "<button type=\"submit\" id=\"button\" class=\"btn btn-primary\" role=\"button\" name=\"button\">确认</button>"
									+ "</td>");
							out.println("</tr>");
						%>
					</form>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>