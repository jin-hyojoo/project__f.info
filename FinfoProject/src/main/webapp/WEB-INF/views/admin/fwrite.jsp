<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>F.INFO : Admin page</title>

    <!-- Fontfaces CSS-->
    <link href="../resources/admin/css/font-face.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="../resources/admin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
    <!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" > -->

    <!-- Vendor CSS-->
    <link href="../resources/admin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../resources/admin/css/theme.css" rel="stylesheet" media="all">
</head>


<!-- body ??????--------------------------------------------------------------------------------------- -->
<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE  ????????? ??????-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="ulist">
                            <img src="../resources/admin/images/icon/logo1.png" alt="Finfo" style="max-width: 28%;" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
						<li>
                            <a href="ulist">
                                <i class="far fa-user"></i>Users</a>
                        </li>
                        <li  class="active">
                            <a href="flist">
                                <i class="fas fa-table"></i>Festival</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR  PC ????????? ??? -->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="ulist">
                    <img src="../resources/admin/images/icon/logo1.png" alt="Finfo" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li> 
                            <a href="ulist">
                                <i class="far fa-user"></i>Users</a>
                        </li>
                        <li  class="active">
                            <a href="flist">
                                <i class="fas fa-table"></i>Festival</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP  ?????? ??????, ????????? ????????? ??????-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                        	<!-- ?????? ??? -->
                            <form class="form-header" action="/admin/flist" method="get">
                            		<select name="type" id="select" class="form-control" style="margin-right: 3px;">
	                                    <option value="">??????</option>
	                                    <option value="N">?????????</option>
	                                    <option value="E">??????</option>
	                                    <option value="NE">????????? or ??????</option>
                                    </select>
                                <input class="au-input au-input--xl" type="text" name="keyword" placeholder="Search"   />
                             	<input type='hidden' name='pageNum'/> 
                             	<input type='hidden' name='amount' />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            
                            <div class="header-button">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                                                            <div class="image">
                                            <img src="../resources/admin/images/icon/avatar-01.jpg" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">${userSession.u_name }</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="../resources/admin/images/icon/avatar-01.jpg" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">${userSession.u_name }</a>
                                                    </h5>
                                                    <span class="email">${userSession.u_email }</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="../finfo/logout">
                                                    <i class="zmdi zmdi-power"></i>????????????</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- END HEADER DESKTOP-->


<!-- ??? ?????? ?????? ----------------------------------------------------------------------------------->

			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6">
							
								<!-- FORM START -->
								<form action="/admin/fwritepost" method="post"  class="form-horizontal"> <!-- enctype="multipart/form-data" -->
									<div class="card" style="width: 1300px;">
										<div class="card-header">
											<strong>???????????? ??????</strong>
										</div>
										<div class="card-body card-block" style="padding: 5%;">
											<!-- ????????? -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label class=" form-control-label">?????????</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">Festival Name</small> <input
														type="text" name="f_SUBJECT"
														class="form-control">
												</div>
											</div>

											<!-- ?????? ?????? ??????  -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="text-input" class=" form-control-label">??????
														/ ?????????</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">???????????? ????????????</small> <input
														type="date"  name="f_START"
														class="form-control" style="width: 40%; float: left;">
													<input type="date"  name="f_END"
														class="form-control"
														style="width: 40%; float: left; margin-left: 10px;">
												</div>
											</div>

											<!-- ???????????? -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="email-input" class=" form-control-label">????????????</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="help-block form-text">Festival Place</small>
													<input type="text"  name="f_PLACE"
														class="form-control">
												</div>
											</div>

											<!-- ????????????  -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="password-input" class=" form-control-label">????????????</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">More Keywords
														with Festival</small> <input type="text"  name="f_TAG1"
														class="form-control" placeholder="Tag 1"
														style="width: 40%; float: left;"> <input
														type="text" name="f_TAG2" class="form-control"
														placeholder="Tag 2"
														style="width: 40%; float: left; margin-left: 10px;">
												</div>
											</div>

											<!-- ??????/ ?????? -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="disabled-input" class=" form-control-label">??????
														/ ????????????</label>
												</div>
												<div class="col-12 col-md-9">
													<small class="form-text text-muted">Festival's
														Genre
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;State of Festival</small> <select name="g_NO" 
														class="form-control" style="width: 40%; float: left;">
														<option value="0">??????</option>
														<option value="1">??????</option>
														<option value="2">??????</option>
														<option value="3">?????????</option>
														<option value="4">???</option>
														<option value="5">EDM</option>
														<option value="6">??????</option>
														<option value="7">?????????</option>
													</select> <select name="f_STATE"  class="form-control"
														style="width: 40%; float: left; margin-left: 10px;">
														<option value="0">??????</option>
														<option value="1">?????????</option>
														<option value="2">??????</option>
													</select>
												</div>
											</div>

											<!-- ?????? ?????? -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="textarea-input" class=" form-control-label">????????????</label>
												</div>
												<div class="col-12 col-md-9">
													<textarea name="f_DESC"
														rows="5" class="form-control"></textarea>
												</div>
											</div>

											<!-- ????????? ??????  
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="select" class=" form-control-label">??????
														?????????</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="file"  name="f_THUMBNAIL" />
												</div>
											</div>-->

											<!-- ????????? ??????  
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="select" class=" form-control-label">??????
														?????????</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="file" name="f_IMGURL" />
												</div>
											</div>-->

											<!-- ?????? URL / ?????? ?????? -->
											<div class="row form-group">
												<div class="col col-md-3">
													<label for="selectSm" class=" form-control-label">??????
														URL / ??????</label>
												</div>
												<div class="col-12 col-md-9">
													<input type="text"  name="f_URL"
														class="form-control" placeholder="Festival URL"
														style="width: 40%; float: left;"> <input
														type="text"  name="f_SHOWLOWPRICE"
														class="form-control" placeholder="(???)?????? "
														style="width: 40%; float: left; margin-left: 10px;">
												</div>
											</div>
										</div>
										<div class="card-footer">
											<button type="submit" class="btn btn-primary btn-sm"
												style="float: right;">Submit</button>
											<button type="reset" class="btn btn-danger btn-sm"
												style="float: right; margin-right: 10px;">Reset</button>
										</div>
									</div>
								</form>
								<!-- FORM END -->
							</div>
						</div>
						<div class="col-md-12">
							<div class="copyright">
								<p>&copy; 2019 SEOIL COMPUTER-SOFTWARE(4) ALL RIGHT
									RESERVED.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

    <!-- Jquery JS-->
    <script src="../resources/admin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="../resources/admin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="../resources/admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="../resources/admin/vendor/slick/slick.min.js">
    </script>
    <script src="../resources/admin/vendor/wow/wow.min.js"></script>
    <script src="../resources/admin/vendor/animsition/animsition.min.js"></script>
    <script src="../resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="../resources/admin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="../resources/admin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="../resources/admin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="../resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../resources/admin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="../resources/admin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="../resources/admin/js/main.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			var insertForm = $(".form-horizontal");
			$(".btn btn-primary btn-sm").on("click",function(e) {
					insertForm.submit();
			});
		
		});//???????????? ??????
	</script>
</body>
</html>