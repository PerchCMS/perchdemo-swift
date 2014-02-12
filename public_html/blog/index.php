<?php include('../perch/runtime.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Blog | Swift Migrations</title>
	<?php perch_page_attributes(); ?>
    <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/css/style.css">
    <link rel="shortcut icon" href="/favicon.ico">
</head>

<body class="blog">
    <nav class="site-navigation" role="navigation">
        <ul>
			<li><a href="/">Home</a></li>
			<li><a href="/about">About</a></li>
			<li><a href="/team">Team</a></li>
			<li class="selected"><a href="/blog">Blog</a></li>
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
		    <h1>Blog</h1>
			
		    <?php 
		        perch_blog_recent_posts(10);
		    ?>
		    
		    
		</div>
		
		<aside class="sidebar" role="complementary">
            <div class="module">
			<h2>Archive</h2>
		    
		    <?php perch_blog_categories(); ?>
		   
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