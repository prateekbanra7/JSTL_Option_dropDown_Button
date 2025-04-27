<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output Page</title>
</head>
<body>

	<h1>Select one number</h1>
		<form action="./index.jsp">
			<select name="combo">
				<option value='1'>1</option>
				<option value='2'>2</option>
				<option value='3'>3</option>
				<option value='4'>4</option>
				<option value='5'>5</option>
				<option value='6'>6</option>
				<option value='7'>7</option>
				<option value='8'>8</option>
				<option value='9'>9</option>
			</select>
			<input type="submit"/>
		</form>
		
		<c:set var='day' value='${param.combo}'/>
		<c:choose>
			<c:when test="${day==1}">
				Sunday
			</c:when>
			<c:when test="${day==2}">
				Monday
			</c:when>
			<c:when test="${day==3}">
				Tuesday
			</c:when>
			<c:when test="${day==4}">
				Wednesday
			</c:when>
			<c:when test="${day==5}">
				Thursday
			</c:when>
			<c:when test="${day==6}">
				Friday
			</c:when>
			<c:when test="${day==7}">
				Saturday
			</c:when>
			<c:otherwise>
				Select Number between 1 to 7
			</c:otherwise>
		</c:choose>
		
</body>
</html>