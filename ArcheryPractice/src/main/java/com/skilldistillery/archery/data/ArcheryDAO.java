package com.skilldistillery.archery.data;

import java.util.List;

import com.skilldistillery.archery.entities.ArcheryPractice;

public interface ArcheryDAO {
	
	ArcheryPractice findById(int id);
		List<ArcheryPractice> findAll();
		ArcheryPractice create(ArcheryPractice newSession);
		ArcheryPractice update(ArcheryPractice updateSession);
		boolean deleById(int sessionId);
	
	
	
}
