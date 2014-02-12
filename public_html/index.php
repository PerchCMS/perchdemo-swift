<?php include('perch/runtime.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Swift Migrations</title>
	<?php perch_page_attributes(); ?>
    <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/css/style.css">
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="alternate" type="application/rss+xml" title="Blog feed" href="/blog/rss.php" />
</head>

<body class="home">
	<nav class="site-navigation">
		<ul>
			<li class="selected"><a href="/">Home</a></li>
			<li><a href="/about">About</a></li>
			<li><a href="/team">Team</a></li>
			<li><a href="/blog">Blog</a></li>
			<li><a href="/contact">Contact</a></li>
		</ul>
	</nav>
	<header class="site-header">
		<h1 class="site-title"><a href="/">Swift Migrations</a></h1>
		<h2 class="site-description">Helping you get your flock from A to B</h2>
	</header>
	<div class="slideshow">
		<div class="slideshow-inner">
			<div class="slide slide-one">
				<?php perch_content('Slide 1'); ?>
			</div>
			<div class="slide slide-two">
				<?php perch_content('Slide 2'); ?>
			</div>
			<div class="slide slide-three">
				<?php perch_content('Slide 3'); ?>
			</div>
		</div>
	</div>
	<div class="main" role="main">
		<div class="main-content home-intro">
			<?php perch_content('Intro'); ?>
		</div>
		
		<?php
		perch_blog_custom(array(
		        'sort'=>'postDateTime',
		        'sort-order'=>'DESC',
		        'template'=>'blog/homepage_post_in_list.html',
		        'count'=>3
		)); ?>

		<div class="testimonials">
			<h2 class="tagline">Our clients recommend us, Swift Migrations are migrations for all seasons.</h2>
			<?php perch_content_custom('Testimonials', array(
				'page'=>'/testimonials.php',
				'template'=>'_home_testimonial.html',
				'sort'=>'familyname',
				'sort-order'=>'RAND',
				'count'=>2
			)); ?>
			
		</div>
	</div>
	<footer class="site-footer">
		<div class="footer">
			<?php perch_content('Contact'); ?>
			<div class="photos-by" role="contentinfo">
				<ul>
					<li>By 4028mdk09 (Own work) [<a href="http://creativecommons.org/licenses/by-sa/3.0">CC-BY-SA-3.0</a>], via Wikimedia Commons</li>
					<li>By Leonora Enking from West Sussex, England (Weaver bird nesting  Uploaded by Magnus Manske) [<a href="http://creativecommons.org/licenses/by-sa/2.0">CC-BY-SA-2.0</a>], via Wikimedia Commons</li>
					<li>By David Eppstein (Own work) [<a href="http://creativecommons.org/licenses/by-sa/3.0">CC-BY-SA-3.0</a>], via Wikimedia Commons</li>
				</ul>
			</div>
		</div>
	</footer>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="/js/modernizr.js"></script>
	<script src="/js/behaviour.js"></script>
</body>
</html>