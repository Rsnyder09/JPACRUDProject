package com.skilldistillery.archery.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "archery_practice")
public class ArcheryPractice {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "arrows_shot")
	private int arrowsShot;

	private int duration;

	private String date;

	private int coffee;

	private int bullseye;

	private String location;

	private int temperature;

	// methods

	public ArcheryPractice() {
		super();
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getArrowsShot() {
		return arrowsShot;
	}

	public void setArrowsShot(int arrows) {
		this.arrowsShot = arrows;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	

	public int getCoffee() {
		return coffee;
	}

	public void setCoffee(int coffee) {
		this.coffee = coffee;
	}

	public int getBullseye() {
		return bullseye;
	}

	public void setBullseye(int bullseye) {
		this.bullseye = bullseye;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getTemperature() {
		return temperature;
	}

	public void setTemperature(int temperature) {
		this.temperature = temperature;
	}

	@Override
	public String toString() {
		return "ArcheryPractice [id=" + id + ", arrowsShot=" + arrowsShot + ", duration=" + duration + ", date=" + date
				+ ", coffee=" + coffee + ", bullseye=" + bullseye + ", location=" + location + ", temperature="
				+ temperature + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ArcheryPractice other = (ArcheryPractice) obj;
		return id == other.id;
	}

}
