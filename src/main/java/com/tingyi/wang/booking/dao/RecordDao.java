package com.tingyi.wang.booking.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tingyi.wang.booking.entity.Record;

public class RecordDao {

	private static final String DB_URL = "jdbc:mysql://localhost:3306/booking?useUnicode=true&characterEncoding=GBK";

	private static final String DB_USERNAME = "tingyi";

	private static final String DB_PASSWORD = "wang";

	private static final String RECORD_QUERY = "insert into record (`id`, `passenger`, `scheduleid`) values (?, ?, ?)";

	private static final String RECORD_QUERY_2 = "select count(*) cnt from record";

	public int insertRecord(Record record) throws SQLException {
		Connection connection = DriverManager.getConnection(DB_URL,
				DB_USERNAME, DB_PASSWORD);
		PreparedStatement stmt = connection.prepareStatement(RECORD_QUERY_2);
		ResultSet resultSet = stmt.executeQuery();
		resultSet.next();
		int cnt = resultSet.getInt("cnt");
		cnt++;

		stmt = connection.prepareStatement(RECORD_QUERY);
		stmt.setInt(1, cnt);
		stmt.setString(2, record.getPassenger());
		stmt.setInt(3, record.getScheduleId());
		stmt.execute();
		return cnt;
	}
}
