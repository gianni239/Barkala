<?php
/**
 * The template for displaying 404 pages (Not Found).
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */

get_header(); ?>

		<div id="main-panel">


			<div id="panel-logo">
				<a href="<?php bloginfo('url'); ?>"><img src="<?php bloginfo('template_url'); ?>/images/logo-barkala.png" alt="barkala" width="301" height="36" /></a>
				<h1>Page Not Found</h1>
				<p>The page you were looking for is not here! <br /><a href="<?php bloginfo('url'); ?>">Click Here</a> to go back to the homepage.</p>
			</div>
		</div>
    <div class="gallery-viewfinder">
    </div>

<?php get_footer(); ?>