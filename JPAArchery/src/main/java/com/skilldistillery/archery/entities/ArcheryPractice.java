package com.skilldistillery.archery.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="archery_practice")
public class ArcheryPractice {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="arrows_shot")
	private int arrowsShot;
	
	
	//methods

	public ArcheryPractice() {
		super();
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


	@Override
	public String toString() {
		return "ArrowsShot [id=" + id + ", arrows=" + arrowsShot + "]";
	}
	
	
	
}
