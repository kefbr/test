package br.com.qintess.spring.modelo.entidades;


import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Colaborador {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;
	@Column (nullable = false)
	private String tecatv;
	@Column (nullable = false)
	private String conhecimentotec;
	@Column (nullable = false)
	private String formacao;
	@ElementCollection
	@CollectionTable(name="certificacao")
	@Column (name="certificacao", nullable = false)
	private List<String> certificacao;
	@Column (nullable = false)
	private String experiencia;
	@ElementCollection
	@CollectionTable(name="idiomas")
	@Column (name="idiomas", nullable = false)
	private List<String> idiomas;
	@Column (nullable = false)
	private String restricao;
	@Column (nullable = false)
	private String interessearea;
	@Column (nullable = false)
	private String filhos;
	@Column (nullable = true)
	private int qtdfilhos; 
	@Column (nullable = true)
	private String idadefilhos;
	@Column (nullable = false)
	private String beneficios;
	@Column (nullable = false)
	private String temasaprender;
	@Column (nullable = false)
	private String temasensinar;
	
	// Getters e Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTecatv() {
		return tecatv;
	}
	public void setTecatv(String tecatv) {
		this.tecatv = tecatv;
	}
	public String getConhecimentotec() {
		return conhecimentotec;
	}
	public void setConhecimentotec(String conhecimentotec) {
		this.conhecimentotec = conhecimentotec;
	}
	public String getFormacao() {
		return formacao;
	}
	public void setFormacao(String formacao) {
		this.formacao = formacao;
	}
	public List<String> getCertificacao() {
		return certificacao;
	}
	public void setCertificacao(List<String> certificacao) {
		this.certificacao = certificacao;
	}
	public String getExperiencia() {
		return experiencia;
	}
	public void setExperiencia(String experiencia) {
		this.experiencia = experiencia;
	}
	
	public List<String> getIdiomas() {
		return idiomas;
	}
	public void setIdiomas(List<String> idiomas) {
		idiomas.remove("");		
		this.idiomas = idiomas;	
	}
	public String getRestricao() {
		return restricao;
	}
	public void setRestricao(String restricao) {
		if(restricao.charAt(0) == ','){
			this.restricao = restricao.replaceFirst(",", "");
		}else {
			this.restricao = restricao;
		}
	}
	public String getInteressearea() {
		return interessearea;
	}
	public void setInteressearea(String interessearea) {
		if(interessearea.charAt(0) == ',') {
		this.interessearea = interessearea.replaceFirst(",", "");
		}else {
			this.interessearea = interessearea;
		}
	}
		
	public String getFilhos() {
		return filhos;
	}
	public void setFilhos(String filhos) {
		this.filhos = filhos;
	}
	public int getQtdfilhos() {
		return qtdfilhos;
	}
	public void setQtdfilhos(int qtdfilhos) {
		this.qtdfilhos = qtdfilhos;
	}
	public String getIdadefilhos() {
		return idadefilhos;
	}
	public void setIdadefilhos(String idadefilhos) {
		this.idadefilhos = idadefilhos;
	}
	public String getBeneficios() {
		return beneficios;
	}
	public void setBeneficios(String beneficios) {
		this.beneficios = beneficios;
	}
	public String getTemasaprender() {
		return temasaprender;
	}
	public void setTemasaprender(String temasaprender) {
		this.temasaprender = temasaprender;
	}
	public String getTemasensinar() {
		return temasensinar;
	}
	public void setTemasensinar(String temasensinar) {
		this.temasensinar = temasensinar;
	}
	
}
	
	
