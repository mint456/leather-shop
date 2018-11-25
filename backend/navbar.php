
<div id="navigation">

	<div class="container">
		<div id="responsive-nav">


			<div class="category-nav">


				<?php include('mm.php');?> 
				<span class="category-header"><a href="index.php"><font color="#FFFFFF" >จันผา เครื่องหนัง </font> </a><i class="fa fa-list"></i></span>

				<ul class="category-list">
					<li  class="dropdown side-dropdown">

						<a  class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">ผู้ใช้งาน : <?php echo $row_mm['admin_name'];?> </a>

					</li>


					<?php 
					if ($row_mm['status'] == 'admin') { ?>
						<li><a href="adduser_admin.php">เพิ่มผู้ใช้งานระบบ</a></li>
						<li><a href="list_admin.php">รายงานผู้ดูแลระบบ</a></li>
						<li><a href="list_member.php">รายงานข้อมูลสมาชิค</a></li>
						
						<li><a href="../logout_admin.php">-ออกจากระบบ</a></li>

					<?php } elseif ($row_mm['status'] == 'staff') { ?>

						<li><a href="list_product_type.php">-จัดการประเภทสินค้า</a></li>
						<li><a href="list_product.php">-จัดการสินค้า</a></li>
						<li><a href="list_sell.php">-จัดการตรวจรับสินค้า</a></li>
						<li><a href="list_bank.php">-จัดการข้อมูลธนาคาร</a></li>
						<li><a href="../logout_admin.php">-ออกจากระบบ</a></li>
					<?php } elseif ($row_mm['status'] == 'superadmin') { ?>

						<li><a href="list_admin.php">รายงานผู้ดูแลระบบ</a></li>
						<li><a href="list_member.php">รายงานข้อมูลสมาชิค</a></li>
						<li><a href="report_all_prd.php">รายงานข้อมูลสินค้า</a></li>
						<li><a href="report_all_order.php">รายงานข้อมูลการสั่งซื้อ</a></li>
						<li><a href="report_all_type.php">รายงานข้อมูลประเภทสินค้า</a></li>
						<li><a href="report_all_sell.php">รายงานตรวจรับสินค้า</a></li>
						<li><a href="report_all_bank.php">รายงานข้อมูลธนาคาร</a></li>
						<li><a href="../logout_admin.php">-ออกจากระบบ</a></li>
					<?php } ?>
				</ul>
				

			</div>


		</div>
	</div>
</div>
<br>

<style type="text/css">

/*
Template Name: E-SHOP HTML E-Commerce Template
Author: yaminncco

Colors:
	Body 		  : #4A4E5A
	Headers 	: #30323A
	Primary 	: #F8694A
	Dark 		  :	#30323A
	Grey 		  : #DADADA #F6F7F8

Fonts: Hind

Table OF Contents
------------------------------------
1 > GENERAL
------ typography
------ Buttons
------ Inputs
------ Lists
------ Sections
------ Breadcrumb
2 > HEADER
------ Top header
------ Logo
------ Search header
------ Account header
------ Cart header
3 > NAVIGATION
------ Category nav
------ Menu nav
------ Dropdowns
------ Mobile Nav
4 > BANNERS
5 > HOME SLIDER
6 > PRODUCT
------ Single product
------ Widget product
------ Product slick
7 > PRODUCTS PAGE
------ Aside
------ Store
8 > PRODUCT DETAILS PAGE
------ Product view
------ Product details
------ Product tab
9 > CHECKOUT PAGE
10 > FOOTER
11 > SLICK
------ Arrows
------ Dots
12 > RESPONSIVE
------------------------------------*/

/*=========================================================
	01 -> GENERAL
	===========================================================*/

/*----------------------------*\
	Typography
	\*----------------------------*/

	body {
		font-family: 'Hind', sans-serif;
		color: #4A4E5A;
		overflow-x: hidden;
	}

	h1, h2, h3, h4, h5, h6 {
		color: #30323A;
		margin: 0 0 10px;
		font-weight: 700;
	}

	a {
		color: #30323A;
		-webkit-transition: 0.3s color;
		transition: 0.3s color;
	}

	a:hover, a:focus {
		color: #F8694A;
		text-decoration: none;
		outline: none;
	}

	.primary-color {
		color: #F8694A;
	}

	.white-color {
		color: #FFF;
	}

	.font-weak {
		font-weight: 400;
	}

	strong {
		color: #30323A;
	}

	ul, ol {
		margin: 0;
		padding: 0;
		list-style: none
	}

	hr {
		margin-top: 15px;
		margin-bottom: 15px;
		border-color: #DADADA;
	}

/*----------------------------*\
	Buttons
	\*----------------------------*/

	.main-btn, .primary-btn {
		display: inline-block;
		padding: 10px 15px;
		text-transform: uppercase;
		font-weight: 700;
		border: none;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.icon-btn.main-btn, .icon-btn.primary-btn {
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		padding: 0px;
		border: none;
	}

	.main-btn {
		color: #30323A;
		background-color: #FFF;
		-webkit-box-shadow: 0px 0px 0px 1px #DADADA inset, 0px 0px 0px 6px transparent;
		box-shadow: 0px 0px 0px 1px #DADADA inset, 0px 0px 0px 6px transparent;
	}

	.main-btn:hover, .main-btn:focus {
		color: #F8694A;
		-webkit-box-shadow: 0px 0px 0px 1px #F8694A inset, 0px 0px 0px 0px #F8694A;
		box-shadow: 0px 0px 0px 1px #F8694A inset, 0px 0px 0px 0px #F8694A;
	}

	.primary-btn {
		color: #FFF;
		background-color: #F8694A;
	}

	.primary-btn:hover, .primary-btn:focus {
		color: #FFF;
		background-color: #30323A;
	}

/*----------------------------*\
	Inputs
	\*----------------------------*/

	.input {
		width: 100%;
		height: 40px;
		padding: 0px 15px;
		border: none;
		background-color: transparent;
		-webkit-box-shadow: 0px 0px 0px 1px #DADADA inset, 0px 0px 0px 5px transparent;
		box-shadow: 0px 0px 0px 1px #DADADA inset, 0px 0px 0px 5px transparent;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.input:focus {
		-webkit-box-shadow: 0px 0px 0px 1px #F8694A inset, 0px 0px 0px 0px #F8694A;
		box-shadow: 0px 0px 0px 1px #F8694A inset, 0px 0px 0px 0px #F8694A;
	}

	textarea.input {
		padding: 15px;
	}

	.input-checkbox .caption {
		max-height: 0;
		overflow: hidden;
		-webkit-transition: 0.3s max-height;
		transition: 0.3s max-height;
	}

	.input-checkbox>label {
		color: #30323A;
	}

	.input-checkbox input[type="checkbox"]:checked+label+.caption, .input-checkbox input[type="radio"]:checked+label+.caption {
		max-height: 800px;
	}

/*----------------------------*\
	Lists
	\*----------------------------*/

	.list-links .list-links-title {
		text-transform: uppercase;
		margin-bottom: 10px;
		font-size: 16px;
	}

	.list-links li>a {
		position: relative;
		display: inline-block;
		text-transform: uppercase;
		padding: 2px 0px;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.list-links li>a:before {
		content: "\f105";
		position: absolute;
		left: 0px;
		font-family: FontAwesome;
		-webkit-transform: translateX(-10px);
		-ms-transform: translateX(-10px);
		transform: translateX(-10px);
		opacity: 0;
		visibility: hidden;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.list-links li>a:hover, .list-links li>a:focus, .list-links li.active>a {
		color: #F8694A;
		-webkit-transform: translateX(10px);
		-ms-transform: translateX(10px);
		transform: translateX(10px);
	}

	.list-links li>a:hover:before, .list-links li>a:focus:before, .list-links li.active>a:before {
		opacity: 1;
		visibility: visible;
	}

/*----------------------------*\
	Sections
	\*----------------------------*/

	.section {
		padding-top: 30px;
		padding-bottom: 30px;
	}

	.section-grey {
		background: #F6F7F8;
	}

	.section-title {
		position: relative;
		margin-bottom: 15px;
		margin-top: 15px;
		border-bottom: 1px solid #DADADA;
	}

	.section-title .title {
		display: inline-block;
		text-transform: uppercase;
	}

	.section-title:after {
		content: "";
		position: absolute;
		left: 0;
		bottom: -1.5px;
		height: 3px;
		width: 60px;
		background-color: #F8694A;
	}

/*----------------------------*\
	Breadcrumb
	\*----------------------------*/

	#breadcrumb {
		-webkit-box-shadow: 0px 6px 6px -6px rgba(0, 0, 0, 0.175);
		box-shadow: 0px 6px 6px -6px rgba(0, 0, 0, 0.175);
	}

	.breadcrumb {
		background-color: transparent;
		border: none;
		border-radius: 0px;
		padding: 15px 0px;
		margin: 0;
	}

	.breadcrumb>.active {
		color: #F8694A;
	}

	.breadcrumb>li+li:before {
		color: #DADADA;
	}

/*=========================================================
	02 -> HEADER
	===========================================================*/

	#header {
		padding-top: 15px;
		padding-bottom: 15px;
	}

/*----------------------------*\
	Top header
	\*----------------------------*/

	#top-header {
		padding-top: 5px;
		padding-bottom: 5px;
		border-bottom: 1px solid #DADADA;
	}

	.header-top-links>li {
		display: inline-block;
	}

	.header-top-links>li+li {
		margin-left: 15px;
	}

	.header-top-links>li>a {
		cursor: pointer;
		text-transform: uppercase;
	}

/*----------------------------*\
	logo
	\*----------------------------*/

	.header-logo {
		display: inline-block;
		margin-right: 15px;
	}

	.header-logo .logo>img {
		width: 100%;
		max-height: 70px;
	}

/*----------------------------*\
	Search header
	\*----------------------------*/

	.header-search {
		display: inline-block;
		padding: 15px 0px;
		max-width: 400px;
	}

	.header-search>form {
		position: relative;
	}

	.header-search>form .search-input {
		padding-left: 150px;
		padding-right: 45px;
	}

	.header-search>form .search-categories {
		position: absolute;
		left: 0px;
		top: 0px;
		width: 135px;
	}

	.header-search>form .search-btn {
		position: absolute;
		top: 0px;
		right: 0px;
		width: 40px;
		height: 40px;
		background-color: transparent;
		border: none;
	}

/*----------------------------*\
	Account header
	\*----------------------------*/

	.header-btns>li {
		display: inline-block;
		vertical-align: top;
		padding: 15px 0px;
	}

	.header-btns>li+li {
		margin-left: 15px;
	}

	.header-btns>li .header-btns-icon {
		position: relative;
		float: left;
		margin-right: 15px;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		color: #30323A;
		background-color: #FFF;
		border: 1px solid #DADADA;
	}

	.header-btns .dropdown-toggle {
		display: block;
		cursor: pointer;
	}

	.header-account.dropdown .custom-menu>li>a>i {
		margin-right: 15px;
		color: #F8694A;
	}

/*----------------------------*\
	Cart header
	\*----------------------------*/

	.header-cart .header-btns-icon .qty {
		position: absolute;
		right: -9px;
		top: -9px;
		width: 18px;
		height: 18px;
		line-height: 18px;
		text-align: center;
		font-size: 10px;
		background: #F8694A;
		color: #FFF;
		border-radius: 50%;
	}

	.header-cart.dropdown .custom-menu {
		width: 300px;
	}

	#shopping-cart .shopping-cart-list {
		max-height: 260px;
		margin-bottom: 15px;
		overflow-y: scroll;
	}

	#shopping-cart .shopping-cart-list .product.product-widget:first-child {
		margin-top: 0px;
	}

	#shopping-cart .shopping-cart-list .product.product-widget:last-child {
		margin-bottom: 0px;
	}

	#shopping-cart .shopping-cart-btns>button {
		width: calc(50% - 2px);
	}

/*=========================================================
	03 -> NAVIGATION
	===========================================================*/

	#navigation {
		background-color: #30323A;
	}

	#navigation .container {
		position: relative;
	}

/*----------------------------*\
	Category nav
	\*----------------------------*/

	.category-nav {
		float: left;
		width: 270px;
	}

	.category-nav .category-header {
		padding: 15px;
		display: block;
		text-transform: uppercase;
		background: #F8694A;
		color: #FFF;
		font-weight: 700;
	}

	.category-nav .category-header>i {
		float: right;
		line-height: 20px;
	}

	.category-nav .category-list {
		position: absolute;
		width: 270px;
		background-color: #FFF;
		border-left: 1px solid #DADADA;
		border-right: 1px solid #DADADA;
		border-bottom: 1px solid #DADADA;
		z-index: 50;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.category-nav.show-on-click .category-list {
		opacity: 0;
		visibility: hidden;
		-webkit-transform: translate(0px, 15px);
		-ms-transform: translate(0px, 15px);
		transform: translate(0px, 15px);
	}

	.category-nav.show-on-click .category-list.open {
		opacity: 1;
		visibility: visible;
		-webkit-transform: translate(0px, 0px);
		-ms-transform: translate(0px, 0px);
		transform: translate(0px, 0px);
	}

	.category-nav .category-list>li+li {
		border-top: 1px solid #DADADA;
	}

	.category-nav .category-list>li.dropdown>.dropdown-toggle>i {
		float: right;
		line-height: 20px;
	}

	.category-nav .category-list>li>a {
		display: block;
		padding: 15px;
		text-transform: uppercase;
	}

	.category-nav .category-list>li>a:hover, .category-nav .category-list>li>a:focus, .category-nav .category-list>li.dropdown.open>a {
		color: #F8694A;
	}

/*----------------------------*\
	Menu nav
	\*----------------------------*/

	.menu-nav .menu-header {
		display: none;
		padding: 15px;
		text-transform: uppercase;
		background: #30323A;
		color: #FFF;
		font-weight: 700;
	}

	.menu-nav .menu-header>i {
		float: right;
		line-height: 20px;
	}

	.menu-nav .menu-list>li {
		display: inline-block;
	}

	.menu-nav .menu-list>li>a {
		display: block;
		padding: 15px;
		color: #FFF;
		text-transform: uppercase;
	}

	.menu-nav .menu-list>li>a:hover, .menu-nav .menu-list>li>a:focus, .menu-nav .menu-list>li.dropdown.open>a {
		color: #F8694A;
	}

/*----------------------------*\
	Dropdowns
	\*----------------------------*/

	.custom-menu {
		position: absolute;
		padding: 15px;
		background: #FFF;
		-webkit-box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.175);
		box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.175);
		z-index: 100;
		top: 100%;
		min-width: 200px;
		opacity: 0;
		visibility: hidden;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.dropdown.open>.custom-menu {
		opacity: 1;
		visibility: visible;
	}

	/*-- Default Dropdown --*/

	.dropdown.default-dropdown>.custom-menu {
		border-top: 2px solid #F8694A;
		left: 50%;
		-webkit-transform: translateX(-50%) translateY(15px);
		-ms-transform: translateX(-50%) translateY(15px);
		transform: translateX(-50%) translateY(15px);
	}

	.dropdown.default-dropdown.open>.custom-menu {
		-webkit-transform: translateX(-50%) translateY(0px);
		-ms-transform: translateX(-50%) translateY(0px);
		transform: translateX(-50%) translateY(0px);
	}

	.dropdown.default-dropdown>.custom-menu>li>a {
		display: block;
		padding: 10px 0px;
		text-transform: uppercase;
	}

	/*-- Mega Dropdown --*/

	.dropdown.mega-dropdown.full-width {
		position: static !important;
	}

	.dropdown.mega-dropdown>.custom-menu {
		border-top: 2px solid #F8694A;
		left: 0;
		-webkit-transform: translate(0px, 15px);
		-ms-transform: translate(0px, 15px);
		transform: translate(0px, 15px);
		width: auto;
		min-width: 750px;
		max-width: 100%;
	}

	.dropdown.mega-dropdown.full-width>.custom-menu {
		width: 100%;
	}

	.dropdown.mega-dropdown.open>.custom-menu {
		-webkit-transform: translate(0px, 0px);
		-ms-transform: translate(0px, 0px);
		transform: translate(0px, 0px);
	}

	/*-- Side Dropdown --*/

	.dropdown.side-dropdown>.custom-menu {
		border-left: 2px solid #F8694A;
		left: 100%;
		top: 0;
		width: 750px;
		-webkit-transform: translate(15px, 0px);
		-ms-transform: translate(15px, 0px);
		transform: translate(15px, 0px);
	}

	.dropdown.side-dropdown.open>.custom-menu {
		-webkit-transform: translate(0px, 0px);
		-ms-transform: translate(0px, 0px);
		transform: translate(0px, 0px);
	}

/*----------------------------*\
	Mobile nav
	\*----------------------------*/

	#header .nav-toggle {
		display: none;
	}

	@media only screen and (max-width: 991px) {
		#header .nav-toggle {
			display: inline-block;
		}
		header .pull-left, header .pull-right {
			float: none !important;
		}
		header .pull-right {
			margin-top: 10px;
		}
		#responsive-nav {
			position: fixed;
			left: 0;
			top: 0;
			bottom: 0;
			max-width: 270px;
			width: 0%;
			overflow: hidden;
			background-color: #FFF;
			-webkit-transform: translateX(-100%);
			-ms-transform: translateX(-100%);
			transform: translateX(-100%);
			-webkit-transition: 0.5s all;
			transition: 0.5s all;
			z-index: 990;
		}
		#responsive-nav.open {
			width: 100%;
			-webkit-transform: translateX(0%);
			-ms-transform: translateX(0%);
			transform: translateX(0%);
		}
		#responsive-nav .dropdown .custom-menu {
			display: none;
			position: static;
			width: 100%;
			-webkit-box-shadow: none;
			box-shadow: none;
			border-top: none;
			border-left: 2px solid #F8694A;
		}
		#responsive-nav .dropdown.open .custom-menu {
			display: block;
			min-width: auto;
			-webkit-transform: translate(0px, 0px);
			-ms-transform: translate(0px, 0px);
			transform: translate(0px, 0px);
		}
		.category-nav .category-list, .menu-nav .menu-list {
			display: none;
			overflow-y: scroll;
			overflow-x: hidden;
			max-height: calc(100vh - 100px);
		}
		.category-nav .category-list.open, .menu-nav .menu-list.open {
			display: block;
		}
		.menu-nav .menu-header, .category-nav .category-header {
			cursor: pointer;
		}
		.category-nav {
			float: none;
			width: 100%;
		}
		.category-nav .category-list {
			position: static;
		}
		.menu-nav .menu-header {
			display: block;
		}
		.menu-nav .menu-list {
			float: none;
			border-left: 1px solid #DADADA;
			border-right: 1px solid #DADADA;
			border-bottom: 1px solid #DADADA;
		}
		.menu-nav .menu-list>li {
			display: block;
		}
		.menu-nav .menu-list>li+li {
			border-top: 1px solid #DADADA;
		}
		.menu-nav .menu-list>li>a {
			color: #30323A;
		}
		#navigation.shadow:after {
			content: "";
			position: fixed;
			left: 0;
			right: 0;
			top: 0;
			bottom: 0;
			background-color: rgba(0, 0, 0, 0.7);
			z-index: 99;
		}
	}

/*=========================================================
	04 -> BANNERS
	===========================================================*/

	.banner {
		display: block;
		position: relative;
		margin-top: 15px;
		margin-bottom: 15px;
	}

	.banner>img {
		width: 100%;
	}

	.banner.banner-1 .banner-caption {
		position: absolute;
		top: 50%;
		left: 50%;
		-webkit-transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
	}

	.banner.banner-2 .banner-caption {
		position: absolute;
		left: 10%;
		right: 10%;
		bottom: 10%;
	}

	.banner h1 {
		font-size: 46px;
		text-transform: uppercase;
	}

/*=========================================================
	05 -> HOME SLIDER
	===========================================================*/

	#home .home-wrap {
		margin-left: 270px;
	}

	#home-slick .banner {
		margin: 0px;
	}

/*=========================================================
	06 -> PRODUCT
	===========================================================*/

	.product .product-old-price {
		color: #F8694A;
		font-size: 70%;
	}

	.product .product-rating {
		display: inline-block;
	}

	.product .product-rating>i {
		color: #FFB656;
	}

	.product .product-rating>i.empty {
		color: #DADADA;
	}

	.product .product-label>span {
		position: relative;
		display: inline-block;
		padding: 5px 15px;
		font-weight: 700;
		color: #FFF;
		background-color: #30323A;
		z-index: 22;
	}

	.product .product-label>span.sale {
		background-color: #F8694A;
	}

	.product .product-countdown {
		z-index: 22;
	}

	.product .product-countdown>li {
		display: inline-block;
		margin-right: -4px;
	}

	.product .product-countdown>li+li:before {
		content: ":";
		color: #FFF;
		background: #30323A;
		padding: 2px;
	}

	.product .product-countdown>li>span {
		display: inline-block;
		color: #FFF;
		font-weight: 700;
		padding: 10px;
		background: #F8694A;
	}

/*----------------------------*\
	Single product
	\*----------------------------*/

	.product.product-single {
		margin-top: 15px;
		margin-bottom: 15px;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.product.product-single:hover {
		-webkit-box-shadow: 0px 6px 10px -6px rgba(0, 0, 0, 0.175);
		box-shadow: 0px 6px 10px -6px rgba(0, 0, 0, 0.175);
		-webkit-transform: translateY(-4px);
		-ms-transform: translateY(-4px);
		transform: translateY(-4px);
	}

	.product.product-single .product-thumb {
		position: relative;
		margin-bottom: 15px;
	}

	.product.product-single .product-thumb>img {
		width: 100%;
	}

	.product.product-single .product-thumb:after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background-color: #FFF;
		opacity: 0;
		visibility: hidden;
		z-index: 0;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.product.product-single:hover .product-thumb:after {
		opacity: 0.7;
		visibility: visible;
	}

	.product.product-single .quick-view {
		position: absolute;
		top: 50%;
		left: 50%;
		-webkit-transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
		opacity: 0;
		visibility: hidden;
		z-index: 20;
	}

	.product.product-single:hover .quick-view {
		opacity: 1;
		visibility: visible;
	}

	.product.product-single .product-label {
		position: absolute;
		left: 0;
		top: 0;
	}

	.product.product-single .product-label>span {
		display: block;
	}

	.product.product-single .product-countdown {
		position: absolute;
		left: 0;
		bottom: 0;
		right: 0;
		text-align: center;
	}

	.product.product-single .product-body {
		padding: 15px;
	}

	.product.product-single .product-price {
		display: inline-block;
	}

	.product.product-single .product-rating {
		float: right;
		margin-top: 5px;
	}

	.product.product-single .product-name {
		font-size: 16px;
	}

	.product.product-single .product-btns {
		margin-top: 20px;
		opacity: 0;
		visibility: hidden;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.product.product-single:hover .product-btns {
		opacity: 1;
		visibility: visible;
	}

	/*-- hot product --*/

	.product.product-single.product-hot {
		border: 2px solid #F8694A;
	}

	.product.product-single.product-hot .product-btns {
		opacity: 1;
		visibility: visible;
	}

/*----------------------------*\
	 Widget product
	 \*----------------------------*/

	 .product.product-widget {
	 	position: relative;
	 	margin-top: 15px;
	 	margin-bottom: 15px;
	 }

	 .product.product-widget .product-thumb {
	 	position: absolute;
	 	left: 0;
	 	top: 0;
	 	width: 60px;
	 }

	 .product.product-widget .product-thumb>img {
	 	width: 100%;
	 }

	 .product.product-widget .product-body {
	 	padding-left: 75px;
	 	padding-top: 10px;
	 	min-height: 60px;
	 }

	 .product.product-widget .product-price {
	 	font-size: 18px;
	 	margin-bottom: 5px;
	 }

	 .product.product-widget .product-price .qty {
	 	font-size: 14px;
	 	font-weight: 400;
	 }

	 .product.product-widget .product-name {
	 	font-size: 14px;
	 }

	 .product.product-widget .cancel-btn {
	 	position: absolute;
	 	right: 0px;
	 	top: 10px;
	 	background-color: transparent;
	 	border: none;
	 	color: #DADADA;
	 }

	 .product.product-widget .cancel-btn:hover {
	 	color: #30323A;
	 }

/*----------------------------*\
	Product slick
	\*----------------------------*/

	.product-slick .slick-slide {
		margin-right: 15px;
		margin-left: 15px;
	}

/*=========================================================
	07 -> PRODUCTS PAGE
	===========================================================*/

/*----------------------------*\
	Aside
	\*----------------------------*/

	#aside .aside {
		margin-bottom: 30px;
	}

	#aside .aside:last-child {
		margin-bottom: 0px;
	}

	.aside .aside-title {
		position: relative;
		border-bottom: 1px solid #DADADA;
		text-transform: uppercase;
		padding-bottom: 15px;
		margin-bottom: 30px;
		margin-top: 15px;
		line-height: 24px;
		font-size: 18px;
	}

	.aside .aside-title:after {
		content: "";
		position: absolute;
		left: 0;
		bottom: -1.5px;
		height: 3px;
		width: 60px;
		background-color: #F8694A;
	}

	/*-- Filter list --*/

	.filter-list {
		margin-bottom: 15px;
	}

	.filter-list>li {
		display: inline-block;
		margin-right: 2px;
		margin-bottom: 6px;
	}

	.filter-list>li:last-child {
		margin-right: 0px;
	}

	.filter-list li a {
		position: relative;
		padding: 0px 5px 0px 20px;
	}

	.filter-list li a:before {
		content: "\f00d";
		font-family: FontAwesome;
		position: absolute;
		left: 4px;
		top: 5px;
		line-height: 12px;
		font-size: 9px;
		color: #FFF;
		background: #30323A;
		width: 12px;
		text-align: center;
		border-radius: 50%;
		height: 12px;
	}

	/*-- Price Filter --*/

	#price-slider {
		margin: 60px 0px 50px;
	}

	.noUi-target {
		background-color: #DADADA;
		-webkit-box-shadow: none;
		box-shadow: none;
		border: none;
		border-radius: 0px;
	}

	.noUi-connect {
		background-color: #F8694A;
	}

	.noUi-horizontal {
		height: 4px;
	}

	.noUi-horizontal .noUi-handle {
		width: 12px;
		height: 12px;
		left: -6px;
		top: -4px;
		border: none;
		background: #30323A;
		-webkit-box-shadow: none;
		box-shadow: none;
		border-radius: 0px;
	}

	.noUi-handle:before, .noUi-handle:after {
		display: none;
	}

	.noUi-tooltip {
		border: none;
		color: #FFF;
		background: #30323A;
		border-radius: 0px;
	}

/*----------------------------*\
	Store
	\*----------------------------*/

	#store {
		margin-top: 15px;
		padding-top: 30px;
		border-top: 1px solid #DADADA;
		margin-bottom: 15px;
		padding-bottom: 30px;
		border-bottom: 1px solid #DADADA;
	}

	/*-- store filter --*/

	.row-filter {
		display: inline-block;
		vertical-align: top;
	}

	.row-filter>a {
		display: inline-block;
		height: 40px;
		width: 40px;
		line-height: 40px;
		text-align: center;
		color: #FFF;
		background-color: #30323A;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.row-filter>a:hover {
		opacity: 0.9;
	}

	.row-filter>a.active {
		background-color: #F8694A;
	}

	.sort-filter {
		display: inline-block;
		margin-left: 15px;
	}

	.sort-filter select.input {
		width: 120px;
	}

	.page-filter select.input {
		width: 90px;
	}

	.page-filter {
		display: inline-block;
	}

	.store-pages {
		display: inline-block;
		margin-left: 15px;
	}

	.store-pages li {
		display: inline-block;
		margin-right: 6px;
	}

	.store-pages li a {
		display: block;
		min-width: 10px;
		text-align: center;
	}

	.store-pages li.active {
		color: #F8694A;
	}

/*=========================================================
	08 -> PRODUCT DETAILS PAGE
	===========================================================*/

/*----------------------------*\
	Product view
	\*----------------------------*/

	#product-main-view .slick-arrow {
		opacity: 0;
	}

	#product-main-view:hover .slick-arrow {
		opacity: 1;
	}

	#product-view {
		margin-top: 10px;
		margin-bottom: 15px;
	}

	#product-view .product-view.slick-slide {
		opacity: 0.2;
	}

	#product-view .product-view.slick-slide.slick-current {
		opacity: 1;
		-webkit-box-shadow: 0px 0px 0px 2px #F8694A inset;
		box-shadow: 0px 0px 0px 2px #F8694A inset;
	}

	#product-view .product-view {
		padding: 7.5px;
	}

	.product-view>img {
		width: 100%;
	}

/*----------------------------*\
	Product details
	\*----------------------------*/

	.product.product-details .product-name {
		margin-top: 15px;
	}

	.product.product-details .product-rating {
		margin-right: 15px;
		margin-bottom: 15px;
	}

	.product.product-details .product-options {
		padding-top: 30px;
		margin-bottom: 15px;
		border-top: 1px solid #DADADA;
		margin-top: 15px;
	}

	.product-options .size-option {
		margin-bottom: 15px;
	}

	.size-option>li {
		display: inline-block;
		margin-right: 6px;
		margin-bottom: 6px;
		vertical-align: top;
	}

	.size-option>li:last-child {
		margin-right: 0px;
	}

	.size-option>li>a {
		display: block;
		border: 1px solid #DADADA;
		font-weight: 700;
		padding: 2px 7px 0px 8px;
	}

	.size-option>li.active a {
		color: #F8694A;
		border-color: #F8694A;
	}

	.color-option>li {
		display: inline-block;
		margin-right: 6px;
		margin-bottom: 6px;
		vertical-align: top;
	}

	.color-option>li:last-child {
		margin-right: 0px;
	}

	.color-option>li>a {
		display: block;
		width: 20px;
		height: 20px;
	}

	.color-option>li.active a {
		-webkit-box-shadow: 0px 0px 0px 2px #FFF, 0px 0px 0px 3px #F8694A;
		box-shadow: 0px 0px 0px 2px #FFF, 0px 0px 0px 3px #F8694A;
	}

	.product.product-details .qty-input {
		display: inline-block;
	}

	.product.product-details .qty-input .input {
		width: 90px;
	}

/*----------------------------*\
	Product tab
	\*----------------------------*/

	.product-tab {
		margin-top: 30px;
	}

	.product-tab .tab-nav {
		border-bottom: 1px solid #DADADA;
		margin-bottom: 30px;
	}

	.product-tab .tab-nav li {
		display: inline-block;
	}

	.product-tab .tab-nav li+li {
		margin-left: 30px;
	}

	.product-tab .tab-nav li a {
		display: block;
		padding: 15px 0px;
		text-transform: uppercase;
		font-weight: 700;
	}

	.product-tab .tab-nav li.active {
		position: relative;
	}

	.product-tab .tab-nav li.active a {
		color: #F8694A;
	}

	.product-tab .tab-nav li.active a:after {
		content: "";
		position: absolute;
		left: 0;
		bottom: -1.5px;
		height: 3px;
		width: 30px;
		background-color: #F8694A;
	}

	/*-- reviews --*/

	.single-review {
		margin-bottom: 30px;
	}

	.single-review .review-heading>div {
		display: inline-block;
	}

	.single-review .review-heading>div+div {
		margin-left: 10px;
	}

	.single-review .review-rating {
		display: inline-block;
	}

	.single-review .review-rating>i {
		color: #FFB656;
	}

	.single-review .review-rating>i.empty {
		color: #DADADA;
	}

	.single-review .review-body {
		margin-top: 10px;
	}

	.reviews-pages li {
		display: inline-block;
		margin-right: 6px;
	}

	.reviews-pages li a {
		display: block;
		min-width: 10px;
		text-align: center;
	}

	.reviews-pages li.active {
		color: #F8694A;
	}

	/*-- review form --*/

	.review-form textarea.input {
		height: 90px;
	}

	.review-form .input-rating .stars {
		display: inline-block;
		vertical-align: top;
	}

	.review-form .input-rating .stars input[type="radio"] {
		display: none;
	}

	.review-form .input-rating .stars>label {
		float: right;
		cursor: pointer;
		padding: 0px 3px;
		margin: 0px;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.review-form .input-rating .stars>label:hover, .review-form .input-rating .stars>label:hover~label {
		-webkit-transform: scale(1.5);
		-ms-transform: scale(1.5);
		transform: scale(1.5);
	}

	.review-form .input-rating .stars>label:before {
		content: "\f006";
		font-family: FontAwesome;
		font-style: normal;
		font-weight: normal;
		color: #DADADA;
		font-size: 14px;
		-webkit-transition: 0.3s all;
		transition: 0.3s all;
	}

	.review-form .input-rating .stars>label:hover:before, .review-form .input-rating .stars>label:hover~label:before {
		content: "\f005";
		color: #FFB656;
	}

	.review-form .input-rating .stars>input:checked label:before, .review-form .input-rating .stars>input:checked~label:before {
		content: "\f005";
		color: #FFB656;
	}

/*=========================================================
	09 -> CHECKOUT PAGE
	===========================================================*/

	.shiping-methods {
		margin-bottom: 30px;
	}

	/*-- shopping cart table --*/

	.shopping-cart-table>tbody>tr>td, .shopping-cart-table>tbody>tr>th, .shopping-cart-table>tfoot>tr>td, .shopping-cart-table>tfoot>tr>th, .shopping-cart-table>thead>tr>td, .shopping-cart-table>thead>tr>th {
		padding: 15px 0px;
		vertical-align: middle;
		border-top: 1px solid #DADADA;
	}

	.shopping-cart-table>thead>tr>th {
		color: #30323A;
		text-transform: uppercase;
		border-bottom: 1px solid #DADADA;
	}

	.shopping-cart-table>tbody>tr:last-child>td {
		border-bottom: 1px solid #DADADA;
	}

	.shopping-cart-table>tfoot>tr>td, .shopping-cart-table>tfoot>tr>th {
		color: #30323A;
		border-top: 0px
	}

	.shopping-cart-table>tfoot>tr>td:not(.empty), .shopping-cart-table>tfoot>tr>th:not(.empty) {
		padding: 15px;
		background-color: #F6F7F8;
		border: 1px solid #DADADA;
	}

	.shopping-cart-table>tbody>tr>.details>a {
		font-size: 18px;
		font-weight: 700;
	}

	.shopping-cart-table>tbody>tr>.thumb>img {
		width: 60px;
	}

	.shopping-cart-table>tbody>tr>.qty .input {
		width: 90px;
	}

	.shopping-cart-table>tbody>tr>.price {
		font-size: 18px;
	}

	.shopping-cart-table>tbody>tr>.total {
		font-size: 18px;
	}

	.shopping-cart-table>tfoot>tr>.sub-total {
		font-size: 18px;
	}

	.shopping-cart-table>tfoot>tr>.total {
		font-size: 24px;
		color: #F8694A;
	}

/*=========================================================
	10 -> FOOTER
	===========================================================*/

	.footer {
		margin: 15px 0px;
	}

	.footer .footer-header {
		font-size: 18px;
		text-transform: uppercase;
		margin-bottom: 30px;
	}

	.footer-logo {
		margin-bottom: 30px;
	}

	.footer-logo .logo {
		display: inline-block;
	}

	.footer-logo .logo>img {
		width: 100%;
		max-height: 70px;
	}

	.footer-social>li {
		display: inline-block;
		margin-right: 15px;
		margin-bottom: 6px;
	}

	.footer-social>li:last-child {
		margin-right: 0px;
	}

	.footer-copyright {
		margin-top: 15px;
		text-transform: uppercase;
		font-size: 14px;
	}

/*=========================================================
	11 -> SLICK
	===========================================================*/

/*----------------------------*\
	Arrows
	\*----------------------------*/

	.slick-prev, .slick-next {
		width: 40px;
		height: 40px;
		background: #30323A;
		z-index: 22;
	}

	.slick-prev:hover, .slick-prev:focus, .slick-next:hover, .slick-next:focus {
		background: #F8694A;
	}

	.slick-prev:before, .slick-next:before {
		color: #FFF;
	}

	.slick-prev {
		left: 15px;
	}

	.slick-next {
		right: 15px;
	}

	.custom-nav .slick-prev, .custom-nav .slick-next {
		display: inline-block;
		position: static;
		-webkit-transform: translate(0px, 0px);
		-ms-transform: translate(0px, 0px);
		transform: translate(0px, 0px);
	}

/*----------------------------*\
	Dots
	\*----------------------------*/

	.slick-dots li, .slick-dots li button, .slick-dots li button:before {
		width: 10px;
		height: 10px;
	}

	.slick-dots li button:before {
		content: "";
		opacity: 1;
		background: #DADADA;
		border-radius: 50%;
	}

	.slick-dots li.slick-active button:before {
		background-color: #F8694A;
	}

	.custom-dots .slick-dots {
		position: static;
		margin: 15px 0px;
	}

/*=========================================================
	12 -> RESPONSIVE
	===========================================================*/

	@media only screen and (max-width: 991px) {
		#home .home-wrap {
			margin-left: 0px;
		}
		#aside {
			margin-bottom: 60px;
		}
		.product-reviews {
			margin-bottom: 30px;
		}
	}

	@media only screen and (max-width: 767px) {
		.banner h1 {
			font-size: 36px;
		}
		.store-filter .pull-right, .store-filter .pull-left {
			float: none !important;
		}
		.store-filter .pull-right {
			margin-top: 15px;
		}
	}

	@media only screen and (max-width: 480px) {
		[class*='col-xs'] {
			width: 100%;
		}
	}

</style>