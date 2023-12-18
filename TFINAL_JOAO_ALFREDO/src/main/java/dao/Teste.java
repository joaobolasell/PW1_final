package dao;

import classes.Usuario;

public class Teste {
	
	public static void main(String[] args) {
		
		System.out.println("OI TESTE\n");
		
		UsuarioDAO uDAO = new UsuarioDAO();
		
		Usuario u = new Usuario();
		u.setEmail("joao@joao.com");
		u.setSenha("123");
		
		
		if(uDAO.salvar(u)) {
			System.out.println("DEU CERTO");
		}else {
			System.out.println("FODEU");
		}
			
		
	}

}
