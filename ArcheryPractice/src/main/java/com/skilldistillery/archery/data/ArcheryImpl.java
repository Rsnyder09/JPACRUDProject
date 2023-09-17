package com.skilldistillery.archery.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
		
		
		em.persist(newSession);
		

		return newSession;
	}

	@Override
	public ArcheryPractice update(ArcheryPractice ap) {

		ArcheryPractice practiceToUpdate = em.find(ArcheryPractice.class, ap.getId());
		practiceToUpdate.setArrowsShot(ap.getArrowsShot());
		practiceToUpdate.setBullseye(ap.getBullseye());
		practiceToUpdate.setCoffee(ap.getCoffee());
		practiceToUpdate.setDate(ap.getDate());
		practiceToUpdate.setDuration(ap.getDuration());
		practiceToUpdate.setLocation(ap.getLocation());
		practiceToUpdate.setTemperature(ap.getTemperature());
		
		//em.persist(ap);
		em.flush();
		return practiceToUpdate;
	}

	@Override
	public boolean deleById(int id) {
		ArcheryPractice session = em.find(ArcheryPractice.class, id);
		boolean successfulyDeleted = false;

		if (session != null) {

			em.remove(session);

			successfulyDeleted = !em.contains(session);

		}
		return successfulyDeleted;

	}

}
