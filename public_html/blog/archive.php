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
	   
		    <?php 	        
		        // defaults for all modes
		        $posts_per_page = 10;
		        $template 		= 'post_in_list.html';
		        $sort_order		= 'DESC';
		        $sort_by		= 'postDateTime';

		        // Have we displayed any posts yet?
		        $posts_displayed = false;

		        /* 
		        	perch_get() is used to get options from the URL.
					
					e.g. for the URL 
						/blog/archive.php?cat=news

					perch_get('cat') would return 'news' because cat=news.


					The code below looks for different options in the URL, and then displays different types of listings based on it.
		        */

		        
		        /* --------------------------- POSTS BY CATEGORY --------------------------- */
		        if (perch_get('cat')) {
		            echo '<h1>Archive of: '.perch_blog_category(perch_get('cat'), true).'</h1>';

		            perch_blog_custom(array(
							'category'   => perch_get('cat'),
							'template'   => $template,
							'count'      => $posts_per_page,
							'sort'       => $sort_by,
							'sort-order' => $sort_order,
		                    ));

		            $posts_displayed = true;
		        }
		        
		        
		        /* --------------------------- POSTS BY TAG --------------------------- */
		        if (perch_get('tag')) {
		            echo '<h1>Archive of: '.perch_blog_tag(perch_get('tag'), true).'</h1>';

		            perch_blog_custom(array(
							'tag'   	 => perch_get('tag'),
							'template'   => $template,
							'count'      => $posts_per_page,
							'sort'       => $sort_by,
							'sort-order' => $sort_order,
		                    ));

		            $posts_displayed = true;
		        }
		        
		        

		        /* --------------------------- POSTS BY DATE RANGE --------------------------- */
		        if (perch_get('year')) {
		            
					$year              = intval(perch_get('year'));
					$date_from         = $year.'-01-01 00:00:00';
					$date_to           = $year.'-12-31 23:59:59';
					$title_date_format = '%Y';
		            
		            
		            // Month and Year?
		            if (perch_get('month')) {
						$month             = intval(perch_get('month'));
						$date_from         = $year.'-'.str_pad($month, 2, '0', STR_PAD_LEFT).'-01 00:00:00';
						$date_to           = $year.'-'.str_pad($month, 2, '0', STR_PAD_LEFT).'-31 23:59:59';
						$title_date_format = '%B, %Y';
		            }

		            echo '<h1>Archive of: '.strftime($title_date_format, strtotime($date_from)).'</h1>';

		            perch_blog_custom(array(
							'filter'     => 'postDateTime',
							'match'      => 'eqbetween',
							'value'      => $date_from.','.$date_to,
							'template'   => $template,
							'count'      => $posts_per_page,
							'sort'       => $sort_by,
							'sort-order' => $sort_order,
		                    ));

		            $posts_displayed = true;
		        }
		        
		        

		        /* --------------------------- POSTS BY AUTHOR --------------------------- */
		        if (perch_get('author')) {

		        	echo '<h1>Posts by '.perch_blog_author(perch_get('author'), array(
		        											'template' => 'author_name.html',
		        											), true).'</h1>';


		        	perch_blog_custom(array(
							'author'   	 => perch_get('author'),
							'template'   => $template,
							'count'      => $posts_per_page,
							'sort'       => $sort_by,
							'sort-order' => $sort_order,
		                    ));

		            $posts_displayed = true;
		        }

		        
		      	/* --------------------------- DEFAULT: ALL POSTS --------------------------- */

		      	if ($posts_displayed == false) {

		      		// No other options have been used; no posts have been displayed yet.
		      		// So display all posts.
		      		 
		      		echo '<h1>Archive</h1>';

		      		perch_blog_custom(array(
							'template'   => $template,
							'count'      => $posts_per_page,
							'sort'       => $sort_by,
							'sort-order' => $sort_order,
		                    ));

		      	}

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