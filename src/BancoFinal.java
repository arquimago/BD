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
		String sql1 = "SELECT p.nome FROM colecao.pessoa AS p JOIN colecao.atores AS a ON (p.idpessoa=a.pessoa_idpessoa)";
		String sql2 = "SELECT p.nome, count(pr.pessoa_idpessoa) FROM colecao.premios AS pr JOIN colecao.pessoa AS p ON (p.idpessoa=pr.pessoa_idpessoa) GROUP BY p.nome, pr.pessoa_idpessoa";
		String sql3 = "SELECT pr.nome, pr.ano, i.nome FROM colecao.premios AS pr JOIN colecao.item AS i ON (i.idItem=pr.item_idItem)";
		String sql4 = "SELECT telefone_contato.telefone, emprestimo.data, contato.nome, item.nome, item.n_discos FROM colecao.telefone_contato, colecao.emprestimo, colecao.contato, colecao.item WHERE emprestimo.item_iditem = item.iditem AND contato.idcontato = emprestimo.contato_idcontato AND contato.idcontato = telefone_contato.contato_idcontato";
		String sql5 = "SELECT contato.nome FROM colecao.contato LEFT JOIN colecao.emprestimo ON (contato.idcontato=emprestimo.contato_idcontato) WHERE emprestimo.contato_idcontato IS NULL";
		String sql6 = "SELECT p.nome FROM colecao.premios AS pr JOIN colecao.pessoa AS p ON (p.idpessoa=pr.pessoa_idpessoa) JOIN (SELECT pe.nome AS nomes, count(pre.pessoa_idpessoa) AS cpremios FROM colecao.premios AS pre JOIN colecao.pessoa AS pe ON (pe.idpessoa=pre.pessoa_idpessoa) GROUP BY pe.nome, pre.pessoa_idpessoa) AS cont ON (cont.nomes=p.nome) WHERE cont.cpremios>1 GROUP BY p.nome";
		String sql7 = "SELECT nome FROM colecao.pessoa WHERE nome LIKE '%João%'";
		String sql8 = "SELECT item.nome, pessoa.nome FROM colecao.item JOIN colecao.dirige ON (item.idItem = dirige.Item_idItem) JOIN colecao.diretores ON (diretores.pessoa_idpessoa = dirige.diretores_pessoa_idpessoa) JOIN colecao.pessoa ON (diretores.pessoa_idpessoa = pessoa.idpessoa) ORDER BY pessoa.nome ";
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
