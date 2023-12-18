package dao;

import javax.persistence.EntityManager;

import java.util.List;
import javax.persistence.TypedQuery;


import classes.Programador;

public class ProgramadorDAO {
	
	private EntityManager em;

	public ProgramadorDAO() {
	}
	
	
	public boolean salvar(Programador user) {
		try {
			em = JPAUtil.getEntityManager();
			em.getTransaction().begin();
			em.persist(user);
			em.getTransaction().commit();
			return true;
		} catch (RuntimeException e) {
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
			return false;
		}
	}
	
	
	public List<Programador> buscarTodos() {
		try {
			em = JPAUtil.getEntityManager();
			TypedQuery<Programador> query = em.createQuery("SELECT obj FROM Programador obj", Programador.class);
			List<Programador> programadores = query.getResultList();
			return programadores;
		} catch (RuntimeException e) {
			//e.printStackTrace();
			return null;
		} 
	}
	
	
	public boolean remover(Long id) {
		try {
			em = JPAUtil.getEntityManager();
			em.getTransaction().begin();
			Programador entity = em.find(Programador.class, id);
			em.remove(entity);
			em.getTransaction().commit();
			return true;
		} catch (RuntimeException e) {
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
			return false;
		} 
	}
	
	public Programador buscarID(Long id) {
		try {
			em = JPAUtil.getEntityManager();
			Programador programador = em.find(Programador.class, id);
			return programador;
		} catch (RuntimeException e) {
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
			return null;
		} 
	}
	
	public boolean atualizar(Programador p) {
		try {
			em = JPAUtil.getEntityManager();
			em.getTransaction().begin();
			em.merge(p);
			em.getTransaction().commit();
			return true;
		} catch (RuntimeException e) {
			if (em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
			return false;
		} 
	}
	
	

}
