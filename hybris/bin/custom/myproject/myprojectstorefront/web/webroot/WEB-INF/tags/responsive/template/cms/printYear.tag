<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="date" class="java.util.Date" />
Current year is: <fmt:formatDate value="${date}" pattern="yyyy" />