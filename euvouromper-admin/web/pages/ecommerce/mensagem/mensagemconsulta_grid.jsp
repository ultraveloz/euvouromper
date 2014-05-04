<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
table thead td:nth-child(1) {
	width: 60px;
}

table thead td:nth-child(1) {
	text-align: right;
}

table tbody tr td:nth-child(1) {
	text-align: right;
}
</style>


<table data-page-count="${pageCount}" class="table">
	<thead>
		<tr>
			<td>C&oacute;digo</td>
			<td>Assunto</td>
			<td>Destino</td>
			<td>Status</td>
		</tr>
	</thead>

	<tfoot>
		<tr>
			<td colspan="4">P&aacute;gina ${pageNumber} de ${pageCount}</td>
		</tr>
	</tfoot>

	<tbody>
		<c:forEach items="${listSource}" var="mensagem">
			<tr
				data-id="idMensagem=${mensagem.idMensagem}">
				<td>${mensagem.idMensagem }</td>
				<td>${mensagem.destinoDescritivo }</td>
				<td>${mensagem.assunto }</td>
				<td>${mensagem.statusDescritivo }</td>
			</tr>
		</c:forEach>
	</tbody>

</table>


