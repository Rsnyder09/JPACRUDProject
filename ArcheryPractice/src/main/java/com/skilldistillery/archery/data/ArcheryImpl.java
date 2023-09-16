package com.skilldistillery.archery.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.archery.entities.ArcheryPractice;

@Service
@Transactional
public class ArcheryImpl implements ArcheryDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public ArcheryPractice findById(int id) {

		return em.find(ArcheryPractice.class, id);
	}

	@Override
	public List<ArcheryPractice> findAll() {
		String jpql = "SELECT a FROM ArcheryPractice a";

		return em.createQuery(jpql, ArcheryPractice.class).getResultList();
	}

	@Override
	public ArcheryPractice create(ArcheryPractice newSession) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArcheryPractice update(ArcheryPractice updateSession) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleById(int sessionId) {
		// TODO Auto-generated method stub
		return false;
	}

}
