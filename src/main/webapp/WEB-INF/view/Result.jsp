<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp"%>
<%@page import="com.tingyi.wang.booking.entity.Record"%>
<%@page import="com.tingyi.wang.booking.dao.RecordDao"%>
<%@page import="com.tingyi.wang.booking.entity.Schedule"%>
<%@page import="com.tingyi.wang.booking.dao.ScheduleDao"%>
<title>Result</title>

</head>
<body>
	<div class="container">
		<h2 align="center">预定结果</h2>
		<div class="table-responsitive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>班次序号</th>
						<th>出发时间</th>
						<th>到达时间</th>
						<th>乘客姓名</th>
						<th>车票号码</th>
					</tr>
				</thead>
				<tbody>
					<%
						ScheduleDao scheduleDao = new ScheduleDao();
						int scheduleId = Integer.parseInt(request.getParameter("id"));
						Schedule schedule = scheduleDao.getScheduleById(scheduleId);
						String userName = request.getParameter("name");
						Record record = new Record(0, userName, scheduleId);

						RecordDao recordDao = new RecordDao();
						scheduleDao.updateScheduleById(scheduleId);
						int numRecord = recordDao.insertRecord(record);

						out.println("<tr>");
						out.println("<td>THU No." + schedule.getRouteId() + " Line."
								+ schedule.getId() + "</td>");
						out.println("<td>" + schedule.getTime() + ":00</td>");
						out.println("<td>" + (schedule.getTime() + 1) + ":00</td>");
						out.println("<td>" + userName + "</td>");
						out.println("<td>" + numRecord + "</td>");
						out.println("</tr>");
					%>
				</tbody>
			</table>
			<div class="row show-grid">
				<div class="col-md-2 col-md-offset-10"><a href="#" class="btn btn-primary" role="button">返回主页</a></div>
			</div>
		</div>
	</div>
</body>
</html>