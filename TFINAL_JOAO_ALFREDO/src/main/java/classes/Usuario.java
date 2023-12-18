package classes;

import dao.UsuarioDAO;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Usuario
 *
 */
@Entity

public class Usuario implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idUsuario;
	
	
	private String email;
	
	private String senha;
	
	

	public Usuario() {
		super();
	}
	
	
	public Long getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}


	public boolean salvar() {
		return new UsuarioDAO().salvar(this);
	}
	
	public boolean login() {		
		return new UsuarioDAO().login(this);
	}
	
   
}
