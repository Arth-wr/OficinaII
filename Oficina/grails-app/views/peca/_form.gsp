<%@ page import="Estoque.Peca" %>



<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'dataCadastro', 'error')} required">
	<label for="dataCadastro">
		<g:message code="peca.dataCadastro.label" default="Data Cadastro" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCadastro" precision="day"  value="${pecaInstance?.dataCadastro}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="peca.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${pecaInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'local', 'error')} ">
	<label for="local">
		<g:message code="peca.local.label" default="Local" />
		
	</label>
	<g:textField name="local" value="${pecaInstance?.local}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'marca', 'error')} ">
	<label for="marca">
		<g:message code="peca.marca.label" default="Marca" />
		
	</label>
	<g:textField name="marca" value="${pecaInstance?.marca}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'quantMinima', 'error')} required">
	<label for="quantMinima">
		<g:message code="peca.quantMinima.label" default="Quant Minima" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantMinima" value="${fieldValue(bean: pecaInstance, field: 'quantMinima')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="peca.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" value="${fieldValue(bean: pecaInstance, field: 'quantidade')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'referencia', 'error')} ">
	<label for="referencia">
		<g:message code="peca.referencia.label" default="Referencia" />
		
	</label>
	<g:textField name="referencia" value="${pecaInstance?.referencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pecaInstance, field: 'valorCompra', 'error')} required">
	<label for="valorCompra">
		<g:message code="peca.valorCompra.label" default="Valor Compra" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorCompra" value="${fieldValue(bean: pecaInstance, field: 'valorCompra')}" required=""/>
</div>

