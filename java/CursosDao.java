package org.trabalhos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class CursosDao {

		//private static LinkedList<Cursos> lista = new LinkedList<Cursos>();

	public void salvar(Cursos c) {
		if (c.getIdcursos()>0) {
			editar(c);
		} else {
			adicionar(c);
		}
	}

	public void adicionar(Cursos c) {
		//lista.add(c);

		Conexao con = new Conexao();

		try {
			String sql = "INSERT INTO cursos (nomecurso, duracao, instituicao, modalidade) "
					+ "VALUES (?, ?, ?, ?)";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, c.getNomecurso());
			prep.setString(2, c.getDuracao());
			prep.setString(3, c.getInstituicao());
			prep.setString(4, c.getModalidade());
			prep.execute();
		} catch (Exception e) {
			e.printStackTrace();
}

		con.desconecta();
}


	public void editar(Cursos c) {
		Conexao con = new Conexao();
		try {
			String sql = " UPDATE cursos SET "
					+ " nomecurso = ?, duracao = ?, "
					+ " instituicao = ?, modalidade = ?"
					+ " WHERE idcursos = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, c.getNomecurso());
			prep.setString(2, c.getDuracao());
			prep.setString(3, c.getInstituicao());
			prep.setString(4, c.getModalidade());
			prep.setInt(5, c.getIdcursos());
			prep.execute();		
		}	catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}


	public void excluir(Cursos c) {
		Conexao con = new Conexao();
		try {
			String sql = " DELETE FROM cursos "
					+ " WHERE idcursos = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setInt(1, c.getIdcursos());
			prep.execute();		
		}	catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}


	public LinkedList<Cursos> listar(){
		//return lista;
		LinkedList<Cursos> lista = new LinkedList<Cursos>();
		Conexao con = new Conexao();
		try {
			String sql = "SELECT * FROM cursos";
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				Cursos c = new Cursos();
				c.setIdcursos(res.getInt("idcursos"));
				c.setNomecurso(res.getString("nomecurso"));
				c.setDuracao(res.getString("duracao"));
				c.setInstituicao(res.getString("instituicao"));
				c.setModalidade(res.getString("modalidade"));
				lista.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return lista;
	}


	public Cursos consultar(int id) {
		Cursos c = new Cursos();
		Conexao con = new Conexao();
		try {
			String sql = "SELECT * FROM cursos WHERE idcursos = " + id;
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			if (res.next()) {
				c.setIdcursos(res.getInt("idcursos"));
				c.setNomecurso(res.getString("nomecurso"));
				c.setDuracao(res.getString("duracao"));
				c.setInstituicao(res.getString("instituicao"));
				c.setModalidade(res.getString("modalidade"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return c;
	}
}