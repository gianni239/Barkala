<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */


get_header(); 
global $page, $paged;


?>
 

		<div id="main-panel" style="padding: 30px;  ">

<img src="<?php bloginfo('template_url'); ?>/images/logo-barkala.png" alt="barkala" width="301" height="36" /><br><br>

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
<?php the_content(); ?>
<?php endwhile;?>		
		</div>
 

<?php get_footer(); ?>