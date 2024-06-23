<style>
/*---------------------
  Header
-----------------------*/
.header {
	background: #070720;
}

.header__logo {
	padding: 20px 0 17px;
}

.header__logo a {
	display: inline-block;
}

.header__menu {
	text-align: center;
}

.header__menu ul li {
	list-style: none;
	display: inline-block;
	position: relative;
	margin-right: 16px;
}

.header__menu ul li.active a {
	background: #e53637;
	color: #ffffff;
}

.header__menu ul li:hover a {
	color: #ffffff;
}

.header__menu ul li:hover .dropdown {
	top: 62px;
	opacity: 1;
	visibility: visible;
}

.header__menu ul li:hover .dropdown li a {
	background: transparent;
}

.header__menu ul li:last-child {
	margin-right: 0;
}

.header__menu ul li .dropdown {
	position: absolute;
	left: 0;
	top: 82px;
	width: 150px;
	background: #ffffff;
	text-align: left;
	padding: 5px 0;
	z-index: 9;
	opacity: 0;
	visibility: hidden;
	-webkit-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

.header__menu ul li .dropdown li {
	display: block;
	margin-right: 0;
}

.header__menu ul li .dropdown li a {
	font-size: 14px;
	color: #111111;
	font-weight: 500;
	padding: 5px 20px;
}

.header__menu ul li a {
	font-size: 15px;
	color: #b7b7b7;
	display: block;
	font-weight: 700;
	-webkit-transition: all, 0.5s;
	-o-transition: all, 0.5s;
	transition: all, 0.5s;
	padding: 20px;
}

.header__menu ul li a span {
	position: relative;
	font-size: 17px;
	top: 2px;
}

.header__right {
	text-align: right;
	padding: 20px 0 15px;
}

.header__right a {
	display: inline-block;
	font-size: 18px;
	color: #ffffff;
	margin-right: 30px;
}

.header__right a:last-child {
	margin-right: 0;
}

.slicknav_menu {
	display: none;
}
.swiper {
	height:537px
}

.swiper .swiper-slide {
  
}

.swiper-slide img {
  width: 100%;
}
.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.swiper {
    margin-left: auto;
    margin-right: auto;
    position: relative;
    overflow: hidden;
    list-style: none;
    padding: 0;
    z-index: 1;
    display: block;
}
.swiper-wrapper {
    position: relative;
    width: 100%;
    height: 100%;
    z-index: 1;
    display: flex;
    transition-property: transform;
    transition-timing-function: var(--swiper-wrapper-transition-timing-function, initial);
    box-sizing: content-box;
}
.swiper-android .swiper-slide, .swiper-ios .swiper-slide, .swiper-wrapper {
    transform: translate3d(0px, 0, 0);
}
.swiper-slide {
    flex-shrink: 0;
    width: 100%;
    height: 100%;
    position: relative;
    transition-property: transform;
    display: block;
}
</style>