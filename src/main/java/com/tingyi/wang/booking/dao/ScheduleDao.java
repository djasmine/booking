package com.tingyi.wang.booking.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tingyi.wang.booking.entity.Schedule;

public class ScheduleDao {

	private static final String DB_URL = "jdbc:mysql://localhost:3306/booking?useUnicode=true&characterEncoding=GBK";
	
	private static final String DB_USERNAME = "tingyi";
	
	private static final String DB_PASSWORD = "wang";
	
	private static final String SCHEDULE_QUERY = "select * from schedule where routeid=?";
	
	private static final String SCHEDULE_QUERY_2 = "select * from schedule where id=?";
	
	private static final String SCHEDULE_QUERY_3 = "update schedule set booked=? where id=?";
	
	public List<Schedule> getScheduleByRouteId(int id) throws SQLException {
		List<Schedule> schedules = new ArrayList<Schedule>();
		Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		PreparedStatement stmt = connection.prepareStatement(SCHEDULE_QUERY);
		stmt.setInt(1, id);
		ResultSet result = stmt.executeQuery();
		Schedule schedule;
		while (result.next()) {
			schedule = new Schedule(result.getInt("id"), result.getInt("time"), 
					result.getInt("Total"), result.getInt("booked"), result.getInt("routeid"));
			schedules.add(schedule);
		}
		return schedules;
	}
	
	public Schedule getScheduleById(int id) throws SQLException {
		Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		PreparedStatement stmt = connection.prepareStatement(SCHEDULE_QUERY_2);
		stmt.setInt(1, id);
		ResultSet result = stmt.executeQuery();
		result.next();
		Schedule schedule = new Schedule(result.getInt("id"), result.getInt("time"), 
				result.getInt("Total"), result.getInt("booked"), result.getInt("routeid"));
		return schedule;
	}
	
	public boolean updateScheduleById(int id) throws SQLException {
		Schedule schedule = getScheduleById(id);
		Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		PreparedStatement stmt = connection.prepareStatement(SCHEDULE_QUERY_3);
		stmt.setInt(1, schedule.getBooked() + 1);
		stmt.setInt(2, id);
		return stmt.execute();
	}
}
