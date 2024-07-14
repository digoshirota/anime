<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<cms:globalSlot uid="animeFooterComponentContentSlot" var="hero" limit="1">
    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="page-up">
            <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer__logo">
                        <%-- aqui iremos chmar novamente o logo do site --%>
                        <a href="./index.html"><img title="${fn:escapeXml(contentSlot.cmsComponents[1].media.altText)}"
                                alt="${fn:escapeXml(contentSlot.cmsComponents[1].media.altText)}"
                                src="${fn:escapeXml(contentSlot.cmsComponents[1].media.url)}"></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="footer__nav">
                        <ul>
                            <%-- aqui iremos chamar novamente os links do menu que esta no header tambem --%>
                            <c:forEach items="${contentSlot.cmsComponents[2].components}" var="component">
                                <c:if test="${component.navigationNode.visible}">
                                    <li class="${request.getAttribute("
                                        javax.servlet.forward.request_uri")==component.link.url ? "active" : "" }">
                                        <a href="${component.link.url}">${component.link.linkName} <span
                                                class="arrow_carrot-down"></span></a>

                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template
                        is made with love <i class="fa fa-heart" aria-hidden="true"></i> by Rodrigo Shirota</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>
</cms:globalSlot>

