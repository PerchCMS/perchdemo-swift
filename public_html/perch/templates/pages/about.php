<?php include($_SERVER['DOCUMENT_ROOT'].'/perch/runtime.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title><?php perch_pages_title(); ?> | Swift Migrations</title>
    <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/css/style.css">
    <link rel="shortcut icon" href="/favicon.ico">
</head>

<body class="about">
	<nav class="site-navigation" role="navigation">
		<ul>
			<li><a href="/">Home</a></li>
			<li class="selected"><a href="/about">About</a></li>
			<li><a href="/team">Team</a></li>
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
		<div class="primary-content">
		<?php perch_content('Content'); ?>
	</div>
	<aside class="sidebar" role="complementary">
	    <div class="module">
			<h3>In this section</h3>
		    <?php perch_pages_navigation(array(
			  'from-path' => '/about',
			  'levels'    => 1,
			  'hide-extensions'      => true
			)); 
			?>
		</div>
		<div class="module">
			<h3>Services to suit any budget</h3>
			<p>Why not give us a call on +44 (0)  123 45678?</p>
		</div>
	</aside>
</div>
	<footer class="site-footer">
		<div class="footer">
			<?php perch_content('Contact'); ?>
		</div>
	</footer>
	<script src="/js/modernizr.js"></script>
</body>
</html>