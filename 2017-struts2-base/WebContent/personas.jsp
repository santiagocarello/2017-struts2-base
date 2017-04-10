<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<meta http-equiv="Content Type" content="text/html; charset=ISO-8859-1">

<body>

<b> <u> Tabla de personas </b> </u>

<s:form action="save">

		<s:hidden name="id"></s:hidden>
        <s:textfield label="Nombre" name="name"></s:textfield>
        <s:textfield label="Edad" name="age"></s:textfield>
        <s:radio label="Genero" name="gender" list="#{'Femenino':'Femenino','Masculino':'Masculino'}" />
        <s:submit></s:submit>	
        <s:actionerror/>
	</s:form>
	
	<table border="1">
        <tr>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>EDAD</th>
            <th>GENERO</th>
            <th></th>
            <th></th>
        </tr>
    <s:iterator value="personas" var="p">
        <tr>
            <td><s:property value="#p.id"/></td>
            <td><s:property value="#p.name"/></td>
            <td><s:property value="#p.age"/></td>
            <td><s:property value="#p.gender"/></td>
        	<td><s:url id="deleteURL" action="delete">
        	    <s:param name="id" value="#p.id"/>
        	    </s:url>
        	    <s:a href="%{deleteURL}">Borrar></s:a>
        	</td>
        	<td>
        		<s:url id="modifyURL" action="modify">
        		<s:param name="id" value="#p.id"/>
        		</s:url>
        		<s:a href="%{modifyURL}">Modificar</s:a>
        	</td>    
        </tr>
	</s:iterator>
</table>

	<p>
	<a href="http://localhost:8080/2017-struts2-base/">Volver al menu principal</a>
	</p>
		
</body>

</html>    