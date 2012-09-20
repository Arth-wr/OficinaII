
<%@ page import="Estoque.Peca" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peca.label', default: 'Peca')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-peca" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-peca" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list peca">
			
				<g:if test="${pecaInstance?.dataCadastro}">
				<li class="fieldcontain">
					<span id="dataCadastro-label" class="property-label"><g:message code="peca.dataCadastro.label" default="Data Cadastro" /></span>
					
						<span class="property-value" aria-labelledby="dataCadastro-label"><g:formatDate date="${pecaInstance?.dataCadastro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pecaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="peca.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${pecaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pecaInstance?.local}">
				<li class="fieldcontain">
					<span id="local-label" class="property-label"><g:message code="peca.local.label" default="Local" /></span>
					
						<span class="property-value" aria-labelledby="local-label"><g:fieldValue bean="${pecaInstance}" field="local"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pecaInstance?.marca}">
				<li class="fieldcontain">
					<span id="marca-label" class="property-label"><g:message code="peca.marca.label" default="Marca" /></span>
					
						<span class="property-value" aria-labelledby="marca-label"><g:fieldValue bean="${pecaInstance}" field="marca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pecaInstance?.quantMinima}">
				<li class="fieldcontain">
					<span id="quantMinima-label" class="property-label"><g:message code="peca.quantMinima.label" default="Quant Minima" /></span>
					
						<span class="property-value" aria-labelledby="quantMinima-label"><g:fieldValue bean="${pecaInstance}" field="quantMinima"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pecaInstance?.quantidade}">
				<li class="fieldcontain">
					<span id="quantidade-label" class="property-label"><g:message code="peca.quantidade.label" default="Quantidade" /></span>
					
						<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue bean="${pecaInstance}" field="quantidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pecaInstance?.referencia}">
				<li class="fieldcontain">
					<span id="referencia-label" class="property-label"><g:message code="peca.referencia.label" default="Referencia" /></span>
					
						<span class="property-value" aria-labelledby="referencia-label"><g:fieldValue bean="${pecaInstance}" field="referencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pecaInstance?.valorCompra}">
				<li class="fieldcontain">
					<span id="valorCompra-label" class="property-label"><g:message code="peca.valorCompra.label" default="Valor Compra" /></span>
					
						<span class="property-value" aria-labelledby="valorCompra-label"><g:fieldValue bean="${pecaInstance}" field="valorCompra"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pecaInstance?.id}" />
					<g:link class="edit" action="edit" id="${pecaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
