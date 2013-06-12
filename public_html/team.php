<?php include('perch/runtime.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Team | Swift Migrations</title>
    <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/css/style.css">
    <link rel="shortcut icon" href="/favicon.ico">
</head>

<body class="team">
	<nav class="site-navigation" role="navigation">
		<ul>
			<li><a href="/">Home</a></li>
			<li><a href="/about">About</a></li>
			<li class="selected"><a href="/team">Team</a></li>
			<li><a href="/blog">Blog</a></li>
			<li><a href="/contact">Contact</a></li>
		</ul>
	</nav>
	<header class="site-header" role="banner">
		<h1 class="site-title"><a href="/">Swift Migrations</a></h1>
		<h2 class="site-description">Helping you get your flock from A to B</h2>
	</header>
	<div class="masthead">
		<div class="masthead-inner">
			<?php perch_content('Masthead'); ?>
		</div>
	</div>
	<div class="main" role="main">
		<div class="primary">
			<?php perch_content('Team'); ?>
		</div>
	</div>
	<footer class="site-footer">
		<div class="footer">
			<?php perch_content('Contact'); ?>
			<div class="photos-by" role="contentinfo">
				<ul>
					<li>By Notjake13 (Own work) [Public domain], via Wikimedia Commons</li>
					<li>By David Dennis (Flickr: Yellow Bird at Olduvai Gorge) [CC-BY-SA-2.0 (http://creativecommons.org/licenses/by-sa/2.0)], via Wikimedia Commons</li>
					<li>By Martin Pettitt from Bury St Edmunds, UK (Yellow Bird) [CC-BY-2.0 (http://creativecommons.org/licenses/by/2.0)], via Wikimedia Commons</li>
					<li>By Panellet (Own work) [Public domain], via Wikimedia Commons</li>
					<li>By Charles J Sharp (Canon EOS with 300mm zoom lens) [GFDL (http://www.gnu.org/copyleft/fdl.html), CC-BY-SA-3.0 (http://creativecommons.org/licenses/by-sa/3.0/) or CC-BY-2.5 (http://creativecommons.org/licenses/by/2.5)], via Wikimedia Commons</li>
					<li>By Lhb1239 (Own work) [CC-BY-SA-3.0 (http://creativecommons.org/licenses/by-sa/3.0)], via Wikimedia Commons</li>
				</ul>
			</div>
		</div>
	</footer>
	<script src="/js/modernizr.js"></script>
</body>
</html>