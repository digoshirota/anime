<%@ page trimDirectiveWhitespaces="true" session="true" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="fragment" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>


<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<template:page pageTitle="${pageTitle}">


<!-- Hero Section Begin -->
    <%-- <cms:globalSlot uid="heroAnimeContentSlot" var="hero" limit="1">
            <div class="container">
                <div class="swiper ">
                    <div class="swiper-wrapper">
                        <c:forEach items="${contentSlot.cmsComponents[0].banners}" var="component">
                            <div class="swiper-slide">
                                <img src="${fn:escapeXml(component.media.url)}" alt="">  
                            </div>  
                        </c:forEach>
                    </div>
                     <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
    
                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
    </cms:globalSlot> --%>
    <!-- Hero Section End -->


    




</template:page>