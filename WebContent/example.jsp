<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame 
       Remove this if you use the .htaccess -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>SAMPLE</title>
<meta name="description" content="">
<meta name="author" content="Bohan Zheng">

<meta name="viewport" content="width=device-width; initial-scale=1.0">

<!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="css/bootstrap.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
<link rel="stylesheet" type="text/css" media="screen"
	href="css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="css/smartadmin-skins.min.css">

<!-- SmartAdmin RTL Support is under construction
			 This RTL CSS will be released in version 1.5
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.min.css"> -->

<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="css/demo.min.css">

<!-- FAVICONS -->
<link rel="shortcut icon" href="img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

<!-- GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="img/splash/touch-icon-ipad-retina.png">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image"
	href="img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image" href="img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">
<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script>
	if (!window.jQuery) {
		document.write('<script src="js/libs/jquery-2.0.2.min.js"><\/script>');
	}
</script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script>
	if (!window.jQuery.ui) {
		document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
	}
</script>

<!-- IMPORTANT: APP CONFIG -->
<script src="js/app.config.js"></script>

<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>

<!-- BOOTSTRAP JS -->
<script src="js/bootstrap/bootstrap.min.js"></script>

<!-- CUSTOM NOTIFICATION -->
<script src="js/notification/SmartNotification.min.js"></script>

<!-- JARVIS WIDGETS -->
<script src="js/smartwidgets/jarvis.widget.min.js"></script>

<!-- EASY PIE CHARTS -->
<script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

<!-- SPARKLINES -->
<script src="js/plugin/sparkline/jquery.sparkline.min.js"></script>

<!-- JQUERY VALIDATE -->
<script src="js/plugin/jquery-validate/jquery.validate.min.js"></script>

<!-- JQUERY MASKED INPUT -->
<script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script>

<!-- JQUERY SELECT2 INPUT -->
<script src="js/plugin/select2/select2.min.js"></script>

<!-- JQUERY UI + Bootstrap Slider -->
<script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

<!-- browser msie issue fix -->
<script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

<!-- FastClick: For mobile devices -->
<script src="js/plugin/fastclick/fastclick.min.js"></script>

<!-- Demo purpose only -->
<script src="js/demo.min.js"></script>

<!-- MAIN APP JS FILE -->
<script src="js/app.min.js"></script>

<!-- Morris Chart Dependencies -->
<script src="js/plugin/morris/raphael.min.js"></script>
<script src="js/plugin/morris/morris.min.js"></script>
</head>
<body>
	<div>
		<header id="header">
			<div id="logo-group">

				<!-- PLACE YOUR LOGO HERE -->
				<span id="logo"> <img src="img/logo.png" alt="SmartAdmin">
				</span>
				<!-- END LOGO PLACEHOLDER -->

				<!-- Note: The activity badge color changes when clicked and resets the number to 0
				Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
				<span id="activity" class="activity-dropdown"> <i
					class="fa fa-user"></i>
				</span>

				<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
				<div class="ajax-dropdown">

					<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
					<div class="btn-group btn-group-justified" data-toggle="buttons">
						<label class="btn btn-default"> <input type="radio"
							name="activity" id="ajax/notify/mail.html"> Msgs (14)
						</label> <label class="btn btn-default"> <input type="radio"
							name="activity" id="ajax/notify/notifications.html">
							notify (3)
						</label> <label class="btn btn-default"> <input type="radio"
							name="activity" id="ajax/notify/tasks.html"> Tasks (4)
						</label>
					</div>

					<!-- notification content -->
					<div class="ajax-notifications custom-scroll">

						<div class="alert alert-transparent">
							<h4>Click a button to show messages here</h4>
							This blank page message helps protect your privacy, or you can
							show the first message here automatically.
						</div>

						<i class="fa fa-lock fa-4x fa-border"></i>

					</div>
					<!-- end notification content -->

					<!-- footer: refresh area -->
					<span> Last updated on: 12/12/2013 9:43AM
						<button type="button"
							data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..."
							class="btn btn-xs btn-default pull-right">
							<i class="fa fa-refresh"></i>
						</button>
					</span>
					<!-- end footer -->

				</div>
				<!-- END AJAX-DROPDOWN -->
			</div>

			<!-- projects dropdown -->
			<div class="project-context hidden-xs">

				<span class="label">Projects:</span> <span
					class="project-selector dropdown-toggle" data-toggle="dropdown">Final
					Project</span>

				<!-- Suggestion: populate this list with fetch and push technique -->
				<ul class="dropdown-menu">
					<li><a href="javascript:void(0);">Online e-merchant
							management system - attaching integration with the iOS</a></li>
					<li><a href="javascript:void(0);">Notes on pipeline
							upgradee</a></li>
					<li><a href="javascript:void(0);">Assesment Report for
							merchant account</a></li>
					<li class="divider"></li>
					<li><a href="javascript:void(0);"><i
							class="fa fa-power-off"></i> Clear</a></li>
				</ul>
				<!-- end dropdown-menu-->

			</div>
			<!-- end projects dropdown -->

			<!-- pulled right: nav area -->
			<div class="pull-right">

				<!-- collapse menu button -->
				<div id="hide-menu" class="btn-header pull-right">
					<span> <a href="javascript:void(0);"
						data-action="toggleMenu" title="Collapse Menu"><i
							class="fa fa-reorder"></i></a>
					</span>
				</div>
				<!-- end collapse menu -->

			</div>
			<!-- end pulled right: nav area -->

		</header>
		<!-- END HEADER -->

		<aside id="left-panel">
			<nav>
				<!-- NOTE: Notice the gaps after each icon usage <i></i>..
				Please note that these links work a bit different than
				traditional href="" links. See documentation for details.
				-->

				<ul>
					<li class="active"><a href="index.jsp"><i
							class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span
							class="menu-item-parent">Sample</span></a></li>
					<li><a href="sparql.jsp"><i
							class="fa fa-lg fa-fw fa-table"></i> <span
							class="menu-item-parent">Sparql</span></a></li>
				</ul>
			</nav>
		</aside>
		<div id="main" role="main">
			<div id="content">
				<div class="row">
					<article class="col-sm-6 col-md-6 col-lg-6">
						<div class="jarviswidget" id="wid-id-0">
							<header>
								<span class="widget-icon"> <i class="fa fa-edit"></i>
								</span>
								<h2>Top 10 Movies Sparql Query</h2>
							</header>
							<div>
								<div class="widget-body no-padding">
									<form class="smart-form" method="post" action="SparqlServer">
										<fieldset>
											<section style="padding-bottom:11px;">
												<label class="textarea textarea-resizable"> <textarea
														rows="11" class="custom-scroll" name="sparql"
														disabled="disabled"></textarea>
												</label>
											</section>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</article>
					<!-- NEW WIDGET START -->
					<article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="jarviswidget" id="wid-id-1"
							data-widget-editbutton="false">
							<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
							<header>
								<span class="widget-icon"> <i class="fa fa-bar-chart-o"></i>
								</span>
								<h2>Top 10 Moives</h2>

							</header>

							<!-- widget div-->
							<div>

								<!-- widget edit box -->
								<div class="jarviswidget-editbox">
									<!-- This area used as dropdown edit box -->

								</div>
								<!-- end widget edit box -->

								<!-- widget content -->
								<div class="widget-body no-padding">

									<div id="best-movie" class="chart no-padding"></div>

								</div>
								<!-- end widget content -->

							</div>
							<!-- end widget div -->

						</div>
					</article>

				</div>

				<div class="row">

					<!-- NEW WIDGET START -->
					<article class="col-sm-6 col-md-6 col-lg-6">
						<div class="jarviswidget" id="wid-id-0">
							<header>
								<span class="widget-icon"> <i class="fa fa-edit"></i>
								</span>
								<h2>Top 10 Movies Sparql Query</h2>
							</header>
							<div>
								<div class="widget-body no-padding">
									<form class="smart-form" method="post" action="SparqlServer">
										<fieldset>
											<section style="padding-bottom:11px;">
												<label class="textarea textarea-resizable"> <textarea
														rows="11" class="custom-scroll" name="sparql"
														disabled="disabled"></textarea>
												</label>
											</section>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</article>

					<!-- NEW WIDGET START -->
					<article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="jarviswidget" id="wid-id-4"
							data-widget-editbutton="false">
							<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
							<header>
								<span class="widget-icon"> <i class="fa fa-bar-chart-o"></i>
								</span>
								<h2>Top 10 Actors/Actresses</h2>

							</header>

							<!-- widget div-->
							<div>

								<!-- widget edit box -->
								<div class="jarviswidget-editbox">
									<!-- This area used as dropdown edit box -->

								</div>
								<!-- end widget edit box -->

								<!-- widget content -->
								<div class="widget-body no-padding">

									<div id="best-actor" class="chart no-padding"></div>

								</div>
								<!-- end widget content -->

							</div>
							<!-- end widget div -->

						</div>
					</article>

				</div>

				<div class="row">
					<article class="col-sm-6 col-md-6 col-lg-6">
						<div class="jarviswidget" id="wid-id-0">
							<header>
								<span class="widget-icon"> <i class="fa fa-edit"></i>
								</span>
								<h2>Top 10 Movies Sparql Query</h2>
							</header>
							<div>
								<div class="widget-body no-padding">
									<form class="smart-form" method="post" action="SparqlServer">
										<fieldset>
											<section style="padding-bottom:11px;">
												<label class="textarea textarea-resizable"> <textarea
														rows="11" class="custom-scroll" name="sparql"
														disabled="disabled"></textarea>
												</label>
											</section>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</article>
					<!-- NEW WIDGET START -->
					<article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="jarviswidget" id="wid-id-2"
							data-widget-editbutton="false">
							<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

								-->
							<header>
								<span class="widget-icon"> <i class="fa fa-bar-chart-o"></i>
								</span>
								<h2>Top 10 Books</h2>

							</header>

							<!-- widget div-->
							<div>

								<!-- widget edit box -->
								<div class="jarviswidget-editbox">
									<!-- This area used as dropdown edit box -->

								</div>
								<!-- end widget edit box -->

								<!-- widget content -->
								<div class="widget-body no-padding">

									<div id="best-book" class="chart no-padding"></div>

								</div>
								<!-- end widget content -->

							</div>
							<!-- end widget div -->

						</div>
					</article>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		window.HW = {};
		$.ajax({
			url : "http://localhost:8080/Sparql/data/test1.json",
			contentType : "application/json",
			success : function(data) {
				window.HW.test1 = data;
				init();
			}
		});

		function init() {
			console.log(window.HW.test1);
			if ($('#best-movie').length) {

				Morris.Bar({
					element : 'best-movie',
					data : [ {
						x : 'some director',
						y : 4.3,
						a : 5.4
					}, {
						x : 'some director',
						a : 8
					}, {
						x : 'some director',
						a : 3
					}, {
						x : 'some director',
						a : 4
					}, {
						x : 'some director',
						a : 5
					}, {
						x : 'some director',
						a : 6
					}, {
						x : 'some director',
						a : 7
					}, {
						x : 'some director',
						a : 8
					}, {
						x : 'some director',
						a : 9
					}, {
						x : 'some director',
						a : 2
					} ],
					xkey : 'x',
					ykeys : [ 'a', 'y' ],
					labels : [ 'A' ]
				});

			}

			if ($('#best-book').length) {

				Morris.Bar({
					element : 'best-book',
					data : [ {
						x : 'some director',
						a : 1.4
					}, {
						x : 'some director',
						a : 2.2
					}, {
						x : 'some director',
						a : 3
					}, {
						x : 'some director',
						a : 4
					}, {
						x : 'some director',
						a : 5
					}, {
						x : 'some director',
						a : 6
					}, {
						x : 'some director',
						a : 7
					}, {
						x : 'some director',
						a : 8
					}, {
						x : 'some director',
						a : 9
					}, {
						x : 'some director',
						a : 2
					} ],
					xkey : 'x',
					ykeys : [ 'a' ],
					labels : [ 'A' ]
				});

			}

			if ($('#best-director').length) {

				Morris.Bar({
					element : 'best-director',
					data : [ {
						x : 'some director',
						a : 1.4
					}, {
						x : 'some director',
						a : 2.2
					}, {
						x : 'some director',
						a : 3
					}, {
						x : 'some director',
						a : 4
					}, {
						x : 'some director',
						a : 5
					}, {
						x : 'some director',
						a : 6
					}, {
						x : 'some director',
						a : 7
					}, {
						x : 'some director',
						a : 8
					}, {
						x : 'some director',
						a : 9
					}, {
						x : 'some director',
						a : 2
					} ],
					xkey : 'x',
					ykeys : [ 'a' ],
					labels : [ 'A' ]
				});

			}

			if ($('#best-actor').length) {

				Morris.Bar({
					element : 'best-actor',
					data : [ {
						x : 'some director',
						a : 1.4
					}, {
						x : 'some director',
						a : 2.2
					}, {
						x : 'some director',
						a : 3
					}, {
						x : 'some director',
						a : 4
					}, {
						x : 'some director',
						a : 5
					}, {
						x : 'some director',
						a : 6
					}, {
						x : 'some director',
						a : 7
					}, {
						x : 'some director',
						a : 8
					}, {
						x : 'some director',
						a : 9
					}, {
						x : 'some director',
						a : 2
					} ],
					xkey : 'x',
					ykeys : [ 'a' ],
					labels : [ 'A' ]
				});

			}
		}

		$(document).ready(function() {
			pageSetUp();
		});
	</script>
</body>
</html>