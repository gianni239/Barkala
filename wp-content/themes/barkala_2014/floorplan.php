<?php
/**
 * Template Name: Floorplan
 *
 * A custom page template without sidebar.
 *
 * The "Template Name:" bit above allows this to be selectable
 * from a dropdown menu on the edit page screen.
 *
 * @package WordPress
 * @subpackage Twenty_Twenty
 * @since Twenty Twenty 1.0
 */
 ?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<title><?php
	/*
	 * Print the <title> tag based on what is being viewed.
	 */
	global $page, $paged;

	wp_title( '|', true, 'right' );

	// Add the blog name.
	bloginfo( 'name' );

	// Add the blog description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		echo " | $site_description";

	// Add a page number if necessary:
	if ( $paged >= 2 || $page >= 2 )
		echo ' | ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) );

	?></title>
	
<link rel="Shortcut Icon" type="image/ico" href="favicon.ico" />
<!-- CSS -->
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/styles/main.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/styles/thickbox.css" type="text/css" media="screen" />
<!-- Scripts -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/scripts/thickbox.js"></script>

<?php wp_head();?>
</head>
<body class="floorplan">

    <a href="<?php bloginfo('url'); ?>/the-apartments"><span>Back</span></a>
    <div class="gallery-viewfinder dont-rotate">
      <ul>
        <li class="current"><img src="<?php bloginfo('url'); ?>/floorplans/<? $fp = $_GET['floorplan']; echo "$fp"; ?>" /></li>
      </ul>
    </div>

<?php get_footer(); ?>
