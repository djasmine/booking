package com.tingyi.wang.booking.dao;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tingyi.wang.booking.entity.Route;

public class RouteDao {
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/booking?useUnicode=true&characterEncoding=GBK";
	
	private static final String DB_USERNAME = "tingyi";
	
	private static final String DB_PASSWORD = "wang";
	
	private static final String ROUTE_QUERY = "select * from route order by id";
	
	public List<Route> getRoutes() throws ClassNotFoundException, SQLException {
		List<Route> routes = new ArrayList<Route>();
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		PreparedStatement stmt = connection.prepareStatement(ROUTE_QUERY);
		ResultSet result = stmt.executeQuery();
		Route route;
		while (result.next()) {
			route = new Route(result.getInt("id"), result.getString("start"), result.getString("end"));
			routes.add(route);
		}
		return routes;
	}
	
}
