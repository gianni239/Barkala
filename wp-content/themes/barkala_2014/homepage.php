<?php
/**
 * Template Name: Homepage
 *
 * A custom page template without sidebar.
 *
 * The "Template Name:" bit above allows this to be selectable
 * from a dropdown menu on the edit page screen.
 *
 */

get_header(); ?>

		<div id="main-panel" class="box-controls">
			<ul id="nav">
				<li><a class="selected" href="<?php bloginfo('url'); ?>">Home</a></li>
				<li><a href="<?php bloginfo('url'); ?>/location">Location</a></li>
				<li><a href="<?php bloginfo('url'); ?>/the-apartments">The Apartments</a></li>
				<li><a href="<?php bloginfo('url'); ?>/gallery">Gallery</a></li>
				<li><a href="<?php bloginfo('url'); ?>/contact">Contact</a></li>
			</ul>
			<div id="panel-content">
			<ul class="hp-controls"></ul>

			<h1><?php the_title(); ?></h1>
			<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
	
			<?php the_content(); ?>
			<?php edit_post_link( __( 'Edit', 'twentyten' ), '<span class="edit-link">', '</span>' ); ?>
	
			<?php endwhile; // end of the loop. ?>
				
      </div>
			<div id="panel-logo">
				<a href="<?php bloginfo('url'); ?>"><img src="<?php bloginfo('template_url'); ?>/images/logo-barkala.png" alt="barkala" width="301" height="36" /></a>
			</div>
		</div>
    <div class="gallery-viewfinder">
      <ul class="hp-layout">
        <li class="current"><img src="<?php bloginfo('template_url'); ?>/images/hp-1.jpg" width="1460" height="823" /></li>
        <li class="next"><img src="<?php bloginfo('template_url'); ?>/images/hp-2.jpg" width="1460" height="821" /></li>
        <li><img src="<?php bloginfo('template_url'); ?>/images/hp-3.jpg" width="1460" height="821" /></li>
        
         <li><img src="<?php bloginfo('template_url'); ?>/images/hp-4.jpg" width="1460" height="821" /></li>
          <li><img src="<?php bloginfo('template_url'); ?>/images/hp-5.jpg" width="1460" height="821" /></li>
           <li><img src="<?php bloginfo('template_url'); ?>/images/hp-6.jpg" width="1460" height="821" /></li>
           
      </ul>
    </div>

<?php get_footer(); ?>
