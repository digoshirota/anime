<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<c:if test="${component.visible}">
	<nav class="" role="navigation">
        

           <ul class="">
               <c:forEach items="${components}" var="component">
                   <c:if test="${component.navigationNode.visible}">
                       <cms:component component="${component}" evaluateRestriction="true" class="" element="li"
                                      navigationType="offcanvas" />
                   </c:if>
               </c:forEach>
           </ul>
       </div>
	</nav>
</c:if>
