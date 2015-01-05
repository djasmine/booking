<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp"%>
<title>Select Time</title>

</head>
<body>
	<div class="container">
		<h2>表格</h2>
		<div class="table-responsitive">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>序号</th>
						<th>出发时间</th>
						<th>到达时间</th>
						<th>选择</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>8:00</td>
						<td>9:00</td>
						<td><a href="Result" class="btn btn-primary" role="button">选择</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>