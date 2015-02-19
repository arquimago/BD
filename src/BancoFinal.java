import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BancoFinal implements Runnable {
	
	public Connection conexao = null;
	int id;
	
	public BancoFinal (int id) {
		try{
			//Carregar driver JDBC do postgress
			Class.forName("org.postgresql.Driver");
			this.id = id;
		} catch (ClassNotFoundException ex){ex.printStackTrace();}
	}
	
	public static Connection setConnection() throws SQLException{

		String host = "10.27.155.35:5432";
		String database = "db_aula";
		String url = "jdbc:postgresql://" +  host + "/" + database;
		String user = "transacoes";
		String password = "password";
		return DriverManager.getConnection(url, user, password);
	}
	
	
	public void consultas()throws Exception{
		Statement comando = conexao.createStatement();
		String sql1 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql2 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql3 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql4 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql5 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql6 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql7 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql8 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql9 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		String sql10 = "SELECT salario FROM universidade.professor WHERE mat_professor = 'P100' ";
		
		ResultSet resultado = comando.executeQuery(sql1);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql2);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql3);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql4);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql5);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql6);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql7);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql8);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql9);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		resultado = comando.executeQuery(sql10);
		while(resultado.next()){
			//fazer impressao da consulta
		}
		
		
	}
	
	public void run() {
		try{
			consultas();
		}catch(Exception ex){System.out.println("Não c!");}

	}

	
	public static void main(String[] args) {
		try{
				Thread thread;
			
				BancoFinal t = new BancoFinal(1);
				t.conexao = setConnection();
				thread = new Thread(t);
				thread.start();
			
		} catch(Exception ex){
			System.out.println("Não foi!");}

	}

}
