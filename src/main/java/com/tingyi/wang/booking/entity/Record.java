package com.tingyi.wang.booking.entity;

public class Record {
	
	private int id;
	private String passenger;
	private int scheduleId;
	
	public Record(int id, String passenger, int scheduleId) {
		setId(id);
		setPassenger(passenger);
		setScheduleId(scheduleId);
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getPassenger() {
		return passenger;
	}
	
	public void setPassenger(String passenger) {
		this.passenger = passenger;
	}
	
	public int getScheduleId() {
		return scheduleId;
	}
	
	public void setScheduleId(int scheduleId) {
		this.scheduleId = scheduleId;
	}
}
