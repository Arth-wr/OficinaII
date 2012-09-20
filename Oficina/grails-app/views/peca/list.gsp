
<%@ page import="Estoque.Peca" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peca.label', default: 'Peca')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-peca" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-peca" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dataCadastro" title="${message(code: 'peca.dataCadastro.label', default: 'Data Cadastro')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'peca.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="local" title="${message(code: 'peca.local.label', default: 'Local')}" />
					
						<g:sortableColumn property="marca" title="${message(code: 'peca.marca.label', default: 'Marca')}" />
					
						<g:sortableColumn property="quantMinima" title="${message(code: 'peca.quantMinima.label', default: 'Quant Minima')}" />
					
						<g:sortableColumn property="quantidade" title="${message(code: 'peca.quantidade.label', default: 'Quantidade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pecaInstanceList}" status="i" var="pecaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pecaInstance.id}">${fieldValue(bean: pecaInstance, field: "dataCadastro")}</g:link></td>
					
						<td>${fieldValue(bean: pecaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: pecaInstance, field: "local")}</td>
					
						<td>${fieldValue(bean: pecaInstance, field: "marca")}</td>
					
						<td>${fieldValue(bean: pecaInstance, field: "quantMinima")}</td>
					
						<td>${fieldValue(bean: pecaInstance, field: "quantidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pecaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
