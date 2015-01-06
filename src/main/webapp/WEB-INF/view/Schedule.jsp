<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp"%>
<%@page import="java.util.List"%>
<%@page import="com.tingyi.wang.booking.entity.Schedule"%>
<%@page import="com.tingyi.wang.booking.dao.ScheduleDao"%>
<title>Select Time</title>

</head>
<body>
	<div class="container">
		<h2 align="center">班次选择</h2>
		<div class="table-responsitive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>班次序号</th>
						<th>出发时间</th>
						<th>到达时间</th>
						<th>剩余票数</th>
						<th>选择</th>
					</tr>
				</thead>
				<tbody>
					<%
					ScheduleDao scheduleDao = new ScheduleDao();
					int id = Integer.parseInt(request.getParameter("id"));
					List<Schedule> schedules = scheduleDao.getScheduleByRouteId(id);
					for (Schedule schedule:schedules) {
						out.println("<tr>");
						out.println("<td>THU No." + schedule.getRouteId() + " Line." + schedule.getId() + "</td>");
						out.println("<td>" + schedule.getTime() + ":00</td>");
						out.println("<td>" + (schedule.getTime() + 1) + ":00</td>");
						int remain = schedule.getTotal() - schedule.getBooked();
						out.println("<td>" + remain + "</td>");
						if (remain > 0) {
							out.println("<td><a href=\"Confirm?id=" + schedule.getId() + "\" class=\"btn btn-primary\" role=\"button\">选择</a></td>");
						}
						else {
							out.println("<td><button class=\"btn\">选择</button></td>");
						}
						out.println("</tr>");
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>