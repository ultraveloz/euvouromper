<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../../../header-title.jsp"%>

<div class="panel panel-body">
	<form class="form-horizontal" action="#" role="form">
		<div class="FormularioCadastro FormularioGeral panel panel-default form-group" data-page-consulta="videoconsulta.admin" data-page-operacao="${operacao}" data-page-cadastro="videocadastro.admin">
			<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-2 control-label text-right">C&oacute;digo</label>
					<div class="col-sm-7">
						<input id="idVideo" type="text" disabled="disabled" class="form-control" value="${vo.idVideo }" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label text-right">Nome</label>
					<div class="col-sm-7">
						<input id="nome" type="text" value="${vo.nome}" autofocus="autofocus" class="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label text-right">Aula</label>
					<div class="col-sm-2">
						<input id="aula" type="text" value="${vo.aula}" class="form-control" />
					</div>

					<label class="col-sm-2 control-label text-right">Bloco</label>
					<div class="col-sm-2">
						<input id="bloco" type="text" value="${vo.bloco}" class="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label text-right">Gratuito</label>

					<div class="col-sm-7">
						<select id="gratuito" class="select" data-field-value="${vo.gratuito}">
							<option value="N">N�o</option>
							<option value="S">Sim</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label text-right">Professor</label>

					<div class="col-sm-7">
						<select id="idProfessor" class="select" data-field-value="${vo.idProfessor}">
							<c:forEach var="professor" items="${professores}">
								<option value="${professor.idProfessor}">${professor.nome}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label text-right">Disciplina</label>

					<div class="col-sm-7">
						<select id="idDisciplina" class="select" data-field-value="${vo.idDisciplina}">
							<c:forEach var="disciplina" items="${disciplinas}">
								<option value="${disciplina.idDisciplina}">${disciplina.nome}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label text-right">Arquivo V�deo</label>
					<div class="col-sm-7">
						<input id="pathVideo" type="text" value="${vo.pathVideo}" class="form-control" disabled="disabled" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label text-right">Upload</label>
					<div class="col-sm-7">
						<div class="panel">
							<div class="block">
								<div class="multiple-uploader-videos with-header">Seu browser nao suporta upload nativo.</div>
							</div>
						</div>
					</div>
				</div>

				<%@include file="../../../botoes-cadastro.jsp"%>
			</div>
		</div>


	</form>
</div>


<script type="text/javascript">
	setTimeout(function() {
		$(".multiple-uploader-videos").pluploadQueue({
			runtimes : 'html5, html4',
			url : 'upload/videos',
			chunk_size : '100mb',
			unique_names : false,
			filters : {
				max_file_size : '100mb',
				mime_types : [ {
					title : "Video files",
					extensions : "mp4"
				} ]
			},
			resize : {
				width : 320,
				height : 240,
				quality : 90
			}
		});
	});
</script>