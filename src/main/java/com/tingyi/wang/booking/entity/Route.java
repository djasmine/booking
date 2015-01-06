package com.tingyi.wang.booking.entity;

public class Route {
	
	private int id;
	
	private String start, end;
	
	public Route(int id, String start, String end) {
		setId(id);
		setStart(start);
		setEnd(end);
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getStart() {
		return start;
	}
	
	public void setStart(String start) {
		this.start = start;
	}
	
	public String getEnd() {
		return end;
	}
	
	public void setEnd(String end) {
		this.end = end;
	}
}
