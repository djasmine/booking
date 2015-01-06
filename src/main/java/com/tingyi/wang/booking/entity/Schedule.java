package com.tingyi.wang.booking.entity;

public class Schedule {
	
	private int id;
	private int time;
	private int total, booked;
	private int routeId;
	
	public Schedule(int id, int time, int total, int booked, int routeId) {
		setId(id);
		setTime(time);
		setTotal(total);
		setBooked(booked);
		setRouteId(routeId);
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getTime() {
		return time;
	}
	
	public void setTime(int time) {
		this.time = time;
	}
	
	public int getTotal() {
		return total;
	}
	
	public void setTotal(int total) {
		this.total = total;
	}
	
	public int getBooked() {
		return booked;
	}
	
	public void setBooked(int booked) {
		this.booked = booked;
	}
	
	public int getRouteId() {
		return routeId;
	}
	
	public void setRouteId(int routeId) {
		this.routeId = routeId;
	}
}
