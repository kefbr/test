package br.com.qintess.spring.modelo.controller;

import java.io.IOException;

import org.apache.commons.io.output.FileWriterWithEncoding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.qintess.spring.modelo.dao.DaoColaborador;
import br.com.qintess.spring.modelo.entidades.Colaborador;

@Controller
@RequestMapping("/formulario")
public class ColaboradorController {

	@Autowired
	private DaoColaborador daoColaborador;

	@RequestMapping("")
	public String carrega(Model model) throws IOException {
		model.addAttribute("colaborador", new Colaborador());
		return "formulario";
	}

	@RequestMapping("/salva")
	public String salva(@ModelAttribute Colaborador colaborador) throws IOException {
		daoColaborador.save(colaborador);
		return "redirect:/formulario";

	}

	@RequestMapping("/relatorio")
	public String relatorio() {
		try {
			var csvWriter = new FileWriterWithEncoding("src/main/webapp/public/FileWriterTest.csv","UTF-8");			
			csvWriter.append("Tecnologia principal ou Atividades que executa");
			csvWriter.append(";");
			csvWriter.append("Conhecimento em outra tecnologia");
			csvWriter.append(";");
			csvWriter.append("Formacao Academica");
			csvWriter.append(";");
			csvWriter.append("Certificacoes");
			csvWriter.append(";");
			csvWriter.append("Tempo de experiencia na area na funcao atual");
			csvWriter.append(";");
			csvWriter.append("Idiomas");
			csvWriter.append(";");
			csvWriter.append("Restricao de local do atuacao");
			csvWriter.append(";");
			csvWriter.append("Tem interesse em atuar em outra area? Qual?");
			csvWriter.append(";");
			csvWriter.append("Tem filhos");
			csvWriter.append(";");
			csvWriter.append("Qtde filhos");
			csvWriter.append(";");
			csvWriter.append("Idade filhos");
			csvWriter.append(";");
			csvWriter.append("Que beneficios voce gostaria de ter?");
			csvWriter.append(";");
			csvWriter.append("Temas que interessa conhecer");
			csvWriter.append(";");
			csvWriter.append("Temas que interessa ensinar");
			csvWriter.append("\n");
			var lista = daoColaborador.findAll();
			for (Colaborador colaborador2 : lista) {
				csvWriter.append(colaborador2.getTecatv());
				csvWriter.append(";");
				csvWriter.append(colaborador2.getConhecimentotec());
				csvWriter.append(";");
				csvWriter.append(colaborador2.getFormacao());
				csvWriter.append(";");
				var aux = colaborador2.getCertificacao();
				for (String certificacao : aux) {
					csvWriter.append(certificacao + ",");
				}
				csvWriter.append(";");
				csvWriter.append(colaborador2.getExperiencia());
				csvWriter.append(";");
				aux = colaborador2.getIdiomas();
				for (String idiomas : aux) {
					csvWriter.append(idiomas + ",");
				}
				csvWriter.append(";");
				csvWriter.append(colaborador2.getRestricao());
				csvWriter.append(";");
				csvWriter.append(colaborador2.getInteressearea());
				csvWriter.append(";");
				csvWriter.append(colaborador2.getFilhos());
				csvWriter.append(";");
				csvWriter.append(Integer.toString(colaborador2.getQtdfilhos()));
				csvWriter.append(";");
				csvWriter.append(colaborador2.getIdadefilhos());
				csvWriter.append(";");
				csvWriter.append(colaborador2.getBeneficios());
				csvWriter.append(";");
				csvWriter.append(colaborador2.getTemasaprender());
				csvWriter.append(";");
				csvWriter.append(colaborador2.getTemasensinar());
				csvWriter.append("\n");
				System.out.println("acabouj");
				csvWriter.flush();
				csvWriter.close();
			}
		} catch (IOException e) {

			e.printStackTrace();
		}
		return "redirect:/public/FileWriterTest.csv";
	}
}
