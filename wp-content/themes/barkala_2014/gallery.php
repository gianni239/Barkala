<?php
/**
 * Template Name: Gallery
 *
 * A custom page template without sidebar.
 *
 * The "Template Name:" bit above allows this to be selectable
 * from a dropdown menu on the edit page screen.
 *
 */

get_header(); ?>

		<div id="main-panel">
			<ul id="nav">
				<li><a href="<?php bloginfo('url'); ?>">Home</a></li>
				<li><a href="<?php bloginfo('url'); ?>/location">Location</a></li>
				<li><a href="<?php bloginfo('url'); ?>/the-apartments">The Apartments</a></li>
				<li><a class="selected" href="<?php bloginfo('url'); ?>/gallery">Gallery</a></li>
				<li><a href="<?php bloginfo('url'); ?>/contact">Contact</a></li>
			</ul>
			
			<div id="panel-content">
				<h1 style="margin-bottom: 20px;" class="gallery-heading">Gallery</h1>
				<!-- 
		        <ul class="gallery-links">
		          <li><a href="<?php bloginfo('url'); ?>/gallery-lifestyle">Lifestyle gallery</a></li>
		          <li><a href="<?php bloginfo('url'); ?>/gallery-interiors">Interiors gallery</a></li>
		        </ul>
		        /-->
				<div class="gallery-thumbs">
        			<a class="scroll-left"><img src="<?php bloginfo('template_url'); ?>/images/gallery-scroll-left.gif" alt="Scroll Left" /></a>
          			<div class="mask">
            			<ul>
            			</ul>
          			</div>
          		<a class="scroll-right"><img src="<?php bloginfo('template_url'); ?>/images/gallery-scroll-right.gif" alt="Scroll Right" /></a>
        		</div>
			</div>

			<div id="panel-logo">
				<a href="<?php bloginfo('url'); ?>"><img src="<?php bloginfo('template_url'); ?>/images/logo-barkala.png" alt="barkala" width="301" height="36" /></a>
			</div>
		</div>
    <div class="gallery-viewfinder">
      <ul class="gallery-layout">
        <li class="current"><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-1.jpg" width="1000" height="667" /></li>
        <li class="next"><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-2.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-3.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-4.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-5.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-6.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-7.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-8.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-9.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-10.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-11.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-12.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-13.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-14.jpg" width="1000" height="667" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/gallery/gallery-15.jpg" width="1000" height="667" /></li>
      </ul>
    </div>

<?php get_footer(); ?>
