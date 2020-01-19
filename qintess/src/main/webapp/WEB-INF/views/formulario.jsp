<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Formulário</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="public/css/estilo.css" />
<spring:url value="/formulario/salva" var="salva"></spring:url>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<div class="container-fluid">
	<div class="container">
		<form:form action="${salva}" modelAttribute="colaborador" id="regForm">

			<h1>Formulário Piloto:</h1>
			<hr />
			<!-- One "tab" for each step in the form: -->

			<div class="tab">
				<div class="form-group">
					<label>Tecnologia principal ou Atividades que executa</label>
					<form:input class="form-control" path="tecatv" />
				</div>
				<div class="form-group">
					<label>Conhecimento em outra tecnologia</label>
					<form:input class="form-control" path="conhecimentotec" />
				</div>
				<div class="form-row">
					<div class="col-md-6">
						<label>Formação Acadêmica</label>
						<form:select path="formacao" class="selectpicker">
							<form:option value="Ensino Médio">Ensino Médio</form:option>
							<form:option value="Ensino Superior">Ensino Superior</form:option>
							<form:option value="Pós">Pós</form:option>
							<form:option value="MBA">MBA</form:option>
							<form:option value="Mestrado">Mestrado</form:option>
							<form:option value="Doutorado">Doutorado</form:option>
							<form:option value="PHD">PHD</form:option>
						</form:select>
					</div>
					<div class="col-md-6">
						<label>Tempo de experiência na área na função atual</label>
						<form:select path="experiencia" class="selectpicker">
							<form:option value="1 a 2 anos">1-2 anos</form:option>
							<form:option value="3 a 5 anos">3-5 anos</form:option>
							<form:option value="mais que 5">mais que 5 anos</form:option>
						</form:select>
					</div>
				</div>
				<div class="form-group">
					<label>Certificações</label>
					<button class="add_form_field">
						<span style="font-size: 16px; font-weight: bold;">+</span>
					</button>
					<div class="container1">
						<form:input class="form-control" path="certificacao" />
					</div>
				</div>
			</div>
			<div class="tab">
				<div class="container2">
					<label>Idiomas falados:</label> <br />
					<form:select id="idiomaescolha" path="idiomas" class="selectpicker"
						title="Selecione os Idiomas">
						<form:option id="ingles" value="ingles" label="Ingles" />
						<form:option id="espanhol" value="espanhol" label="Espanhol" />
						<form:option id="italiano" value="italiano" label="Italiano" />
						<form:option id="frances" value="frances" label="Frances" />
						<form:option id="alemão" value="alemão" label="Alemão" />
						<form:option id="outros" value="" label="Outros" />
					</form:select>
				</div>
				<div class="container3">
					<label>Restrições de locais de atuação?</label> <br />
					<form:select id="restricao" path="restricao" class="selectpicker"
						title="Sim ou Não?">
						<form:option id="sim" value="" label="Sim" />
						<form:option value="Não" label="Não" />
					</form:select>
				</div>
				<div class="container4">
					<label>Tem interesse em atuar em outra área?</label> <br />
					<form:select id="interessearea" path="interessearea"
						class="selectpicker" title="Sim ou Não?">
						<form:option id="sim" value="" label="Sim" />
						<form:option value="Não" label="Não" />
					</form:select>
				</div>
			</div>

			<div class="tab">
				<div class="form-group">
					<label>Temas que interessa conhecer</label>
					<button class="add_form_field2">
						<span style="font-size: 16px; font-weight: bold;">+</span>
					</button>
					<div class="container5">
						<form:input class="form-control" path="temasaprender" />
					</div>
				</div>
				<div class="form-group">
					<label>Temas que interessa ensinar</label>
					<button class="add_form_field3">
						<span style="font-size: 16px; font-weight: bold;">+</span>
					</button>
					<div class="container6">
						<form:input class="form-control" path="temasensinar" />
					</div>
				</div>
			</div>

			<div class="tab">
				<div class="form-group">
					<label>Que benefícios você gostaria de ter?</label>
					<form:textarea class="form-control" path="beneficios" />
				</div>
				<div class="container7">
					<label>Tem filhos?</label> <br />
					<form:select id="filhos" path="filhos"
						class="selectpicker" title="Sim ou Não?">
						<form:option id="sim" value="Sim" label="Sim" />
						<form:option value="Não" label="Não" />						
					</form:select>
					<div class="row" id ="fil">
					<div class="form-group col-md-3" id="qtdfilho" style="display :none;">
					<label>Quant° de Filhos</label> 
					<br />
					<form:input class="form-control" id="qtdfilhos1" name ="qtdfilhos1" type="number" min="0" path ="qtdfilhos"/>
					</div>
					</div>
				</div>
			</div>

			<div style="overflow: auto;">
				<div style="float: right;">
					<button type="button" class = "btn btn-primary btn-sm" id="prevBtn" onclick="nextPrev(-1)">Anterior</button>
					<button type="button" class = "btn btn-primary btn-sm" id="nextBtn" onclick="nextPrev(1)">Próxima</button>
				</div>
			</div>

			<!-- Circles which indicates the steps of the form: -->
			<div style="text-align: center; margin-top: 40px;">
				<span class="step"></span> <span class="step"></span> <span
					class="step"></span> <span class="step"></span>
			</div>

			<!--Bootstrap-->

			<script
				src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
				integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
				crossorigin="anonymous"></script>
			<script
				src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
				integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
				crossorigin="anonymous"></script>
			<script src="public/js/form.js"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>
			<script>
				$(document)
						.ready(
								function() {
									var max_fields = 10;
									var wrapper = $(".container1");
									var add_button = $(".add_form_field");

									var x = 1;

									$(add_button)
											.click(
													function(e) {
														e.preventDefault();
														if (x < max_fields) {
															x++;
															$(wrapper)
																	.append(
																			'<div><div class="input-group mb-2" style="margin: 3px 3px 0px 0px"><form:input class="form-control" path="certificacao" /><span class="input-group-btn"><button class="btn btn-danger" type="button" id="delete">Deletar</button></span></div></div>').fadeIn(2000);
														} else {
															alert('You Reached the limits')
														}
													});

									$(wrapper).on("click", ".input-group-btn",
											function(e) {
												e.preventDefault();
												$(this).parent('div').remove();
												x--;
											})
								});
			</script>
			<script>
				var x = 0;
				$("#idiomaescolha")
						.on(
								'change',
								function() {
									$("#idiomaescolha option:selected")
											.each(
													function(index, element) {
														if (!$(this)
																.is(
																		"option#outros")) {
															$("#idiomacampo")
																	.parent(
																			'div')
																	.remove();
															x = 0;
														}
														if ($(this)
																.is(
																		"option#outros")
																&& (x == 0)) {
															$(".container2")
																	.append(
																			'<div><div id="idiomacampo"><div class="form-group"><label>Quais?</label><form:input class="form-control" path="idiomas" /></div></div></div>');
															x = 1;
														}

													})
								});
			</script>
			<script>
				$("#restricao")
						.on(
								'change',
								function() {
									if ($("#restricao option:selected").attr(
											"id") == "sim") {
										$(".container3")
												.append(
														'<div><div class="form-group" id="restri"><label>Quais?</label><form:input class="form-control" path="restricao" /></div></div>')
									} else {
										$("#restri").parent('div').remove();
									}
								});
			</script>
			<script>
				$("#interessearea")
						.on(
								'change',
								function() {
									if ($("#interessearea option:selected")
											.attr("id") == "sim") {
										$(".container4")
												.append(
														'<div><div class="form-group" id="interesse"><label>Quais?</label><form:input class="form-control" path="interessearea" /></div></div>')
									} else {
										$("#interesse").parent('div').remove();
									}
								});
			</script>
			<script>
				$(document)
						.ready(
								function() {
									var max_fields = 10;
									var wrapper = $(".container5");
									var add_button = $(".add_form_field2");

									var x = 1;

									$(add_button)
											.click(
													function(e) {
														e.preventDefault();
														if (x < max_fields) {
															x++;
															$(wrapper)
																	.append(
																			'<div><div class="input-group mb-2" style="margin: 3px 3px 0px 0px"><form:input class="form-control" path="temasaprender" /><span class="input-group-btn"><button class="btn btn-danger" type="button" id="delete">Deletar</button></span></div></div>');
														} else {
															alert('You Reached the limits')
														}
													});

									$(wrapper).on("click", ".input-group-btn",
											function(e) {
												e.preventDefault();
												$(this).parent('div').remove();
												x--;
											})
								});
			</script>
			<script>
				$(document)
						.ready(
								function() {
									var max_fields = 10;
									var wrapper = $(".container6");
									var add_button = $(".add_form_field3");

									var x = 1;

									$(add_button)
											.click(
													function(e) {
														e.preventDefault();
														if (x < max_fields) {
															x++;
															$(wrapper)
																	.append(
																	'<div><div class="input-group mb-2" style="margin: 3px 3px 0px 0px"><form:input class="form-control" path="temasensinar" /><span class="input-group-btn"><button class="btn btn-danger" type="button" id="delete">Deletar</button></span></div></div>');
														} else {
															alert('You Reached the limits')
														}
													});

									$(wrapper).on("click", ".input-group-btn",
											function(e) {
												e.preventDefault();
												$(this).parent('div').remove();
												x--;
											})
								});
			</script>
			<script>
				$("#filhos")
						.on(
								'change',
								function() {
									if ($("#filhos option:selected")
											.attr("id") == "sim") {
										$("#qtdfilho").show();		
									} else {
										$("#qtdfilho").hide();
									}
								})	
			var count = 0;
			var wrapper = $("#fil");
				$("#qtdfilhos1")
				.on(
						'change',
						function(e) {				
							if (count <= $("#qtdfilhos1").val()) {
								e.preventDefault();
								count++;
								console.log("aumentou");
								max_fields_filhos = $("#qtdfilhos1").val();
								$(wrapper)
										.append(
												'<div id="linha" class="form-group col-md-2"><label>Idade ' + count + '°</label><form:input class="form-control" path="idadefilhos"/></div>'); //add input box
							}
							if (count > $("#qtdfilhos1").val()){
								e.preventDefault();
								console.log("diminiu");
								count--;
								max_fields_filhos = $("#qtdfilhos1").val();
								$("#linha").remove();
								}
						});
			</script>

		</form:form>
	</div>
	</div>
</body>
</html>