package com.skilldistillery.archery.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ArcheryPracticeTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private ArcheryPractice ap;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAArchery");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		ap = em.find(ArcheryPractice.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		ap = null;
	}

	@Test
	void test_ArcheryPractice_entity_mapping() {
		assertNotNull(ap);
		assertEquals(53, ap.getArrowsShot());
	}

}
