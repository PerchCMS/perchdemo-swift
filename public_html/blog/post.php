<?php include('../perch/runtime.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title><?php perch_blog_post_field(perch_get('s'), 'postTitle'); ?> | Blog | Swift Migrations</title>
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
		    	<?php perch_blog_post(perch_get('s')); ?>

		    	
		    	
		    	<div class="meta">
		            <div class="cats">
		                <?php perch_blog_post_categories(perch_get('s')); ?>
		            </div>
		            <div class="tags">
		                <?php perch_blog_post_tags(perch_get('s')); ?>
		            </div>
		        </div>
		    	
		    	<?php perch_blog_post_comments(perch_get('s'), array(
		    			'count'=>10
		    	)); ?>
		    	
		    	<?php perch_blog_post_comment_form(perch_get('s')); ?>
		        
		 
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
<? PerchUtil::output_debug();?>
	<script src="/js/modernizr.js"></script>
</body>
</html>