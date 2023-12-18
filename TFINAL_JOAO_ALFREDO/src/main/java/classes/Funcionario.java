package classes;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Funcionario
 *
 */
@Entity
@Inheritance (strategy = InheritanceType.JOINED)
public class Funcionario implements Serializable {

	
	private static final long serialVersionUID = 1L;
	
	@Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idFuncionario;
	
	private String nome;
	
	private String endereco;
	
	private String email;
	
	private double salario;
	
	private String cpf;
	
	

	public Funcionario() {
		super();
	}
	
	
	
	
	public Funcionario(String nome, String endereco, String email, double salario, String cpf) {
		super();
		this.nome = nome;
		this.endereco = endereco;
		this.email = email;
		this.salario = salario;
		this.cpf = cpf;
	}



	


	public Long getIdFuncionario() {
		return idFuncionario;
	}




	public void setIdFuncionario(Long idFuncionario) {
		this.idFuncionario = idFuncionario;
	}




	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	public String getEndereco() {
		return endereco;
	}



	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public double getSalario() {
		return salario;
	}



	public void setSalario(double salario) {
		this.salario = salario;
	}



	public String getCpf() {
		return cpf;
	}



	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	
	
   
}
