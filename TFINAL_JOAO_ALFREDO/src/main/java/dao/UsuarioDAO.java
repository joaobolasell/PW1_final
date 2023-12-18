package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;


import classes.Usuario;
import dao.JPAUtil;



public class UsuarioDAO {
	
	private EntityManager em;

	public UsuarioDAO() {
	}
	
	
	public boolean salvar(Usuario user) {
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
	
	
	
	public boolean login(Usuario u) {
		try {
			em = JPAUtil.getEntityManager();
			TypedQuery<Usuario> query = em.createQuery("SELECT obj FROM Usuario obj", Usuario.class);
			List<Usuario> usuarios = query.getResultList();
			
			for(Usuario usu : usuarios) {
				if(usu.getEmail().equals(u.getEmail()) && usu.getSenha().equals(u.getSenha())) {
					return true;
				}
			}
			return false;			
			
		} catch (RuntimeException e) {
			//e.printStackTrace();
			return false;
		} 
	}
	
	

}
