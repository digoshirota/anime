<%@ page trimDirectiveWhitespaces="true" session="true" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="fragment" tagdir="/WEB-INF/tags/responsive/template/cms" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<template:page pageTitle="${pageTitle}">
<!-- Hero Section Begin -->
    <cms:globalSlot uid="heroAnimeContentSlot" var="hero" limit="1">
            <div class="container hero">
                <div class="swiper ">
                    <div class="swiper-wrapper hero__slider">
                        <c:forEach items="${contentSlot.cmsComponents[0].banners}" var="component">
                            <div class="swiper-slide hero__items">
                                <img src="${fn:escapeXml(component.media.url)}" alt="">  
                                <div class="row setPosition">
                                    <div class="col-lg-6">
                                        <div class="hero__text">
                                            <div class="label">Adventure</div>
                                            <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                            <p>After 30 days of travel across the world...</p>
                                            <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
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
    </cms:globalSlot>
    <!-- Hero Section End -->

   


    <!-- Product Section Begin -->
    <cms:globalSlot uid="homepageAnimeProductCarouselComponentContentSlot" var="hero" limit="1">
        <section class="product spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="trending__product">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="section-title">
                                        <h4>Trending Now</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="btn__all">
                                        <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                    </div>
                                </div>
                            </div>
						
                            <div class="row">
                                <c:forEach items="${contentSlot.cmsComponents[0].products}" var="component">
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <!-- #url para a imagem do produto-->
                                            <div class="product__item__pic set-bg" style="background-image: url(${component.picture.url})">
                                                <div class="ep">18 / 18</div>
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <!-- #url para o produto com nome do produto-->
                                                <h5><a href="/myprojectstorefront/electronics/en/p/${component.code}">${component.name}</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </cms:globalSlot>


    
</template:page>