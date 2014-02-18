<?php
/**
 * Template Name: The Apartments
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
				<li><a class="selected" href="<?php bloginfo('url'); ?>/the-apartments">The Apartments</a></li>
				<li><a href="<?php bloginfo('url'); ?>/gallery">Gallery</a></li>
				<li><a href="<?php bloginfo('url'); ?>/contact">Contact</a></li>
			</ul>
			<div id="panel-content">
			
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
		
	<div id="apartment-nav-container">
	<div id="apartment-nav-panel">
	<div id="apartment-nav-inner">
		<h3>View apartment number:</h3>
		<ul>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-1/?KeepThis=true&TB_iframe=true&height=455&width=800">1</a></li>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-2/?KeepThis=true&TB_iframe=true&height=455&width=800">2</a></li>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-3/?KeepThis=true&TB_iframe=true&height=455&width=800">3</a></li>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-4/?KeepThis=true&TB_iframe=true&height=455&width=800">4</a></li>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-5/?KeepThis=true&TB_iframe=true&height=455&width=800">5</a></li>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-6/?KeepThis=true&TB_iframe=true&height=455&width=800">6</a></li>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-7/?KeepThis=true&TB_iframe=true&height=455&width=800">7</a></li>
			<li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-8/?KeepThis=true&TB_iframe=true&height=455&width=800">8</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-9/?KeepThis=true&TB_iframe=true&height=455&width=800">9</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-10/?KeepThis=true&TB_iframe=true&height=455&width=800">10</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-11/?KeepThis=true&TB_iframe=true&height=455&width=800">11</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-12/?KeepThis=true&TB_iframe=true&height=455&width=800">12</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-13/?KeepThis=true&TB_iframe=true&height=455&width=800">13</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-14/?KeepThis=true&TB_iframe=true&height=455&width=800">14</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-15/?KeepThis=true&TB_iframe=true&height=455&width=800">15</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-16/?KeepThis=true&TB_iframe=true&height=455&width=800">16</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-17/?KeepThis=true&TB_iframe=true&height=455&width=800">17</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-18/?KeepThis=true&TB_iframe=true&height=455&width=800">18</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-19/?KeepThis=true&TB_iframe=true&height=455&width=800">19</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-20/?KeepThis=true&TB_iframe=true&height=455&width=800">20</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-21/?KeepThis=true&TB_iframe=true&height=455&width=800">21</a></li>
      <li><a class="thickbox" href="<?php bloginfo('url'); ?>/the-apartments/apartment-22/?KeepThis=true&TB_iframe=true&height=455&width=800">22</a></li>
            
		</ul>
	</div>
	</div>
	</div>	
		
    <div class="gallery-viewfinder dont-rotate">
      <ul>
        <li class="current"><img src="<?php bloginfo('template_url'); ?>/images/apartments.jpg" width="1024" height="620" /></li>
      </ul>
    </div>

<?php get_footer(); ?>
