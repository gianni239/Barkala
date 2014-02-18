<?php
/**
 * Template Name: Apartment Detail
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
<html style="margin:0 !important"> 
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
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
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/styles/main.css" type="text/css" media="screen" />
	<?php wp_head();?>
</head>

	<body class="apartment-details">
	<div class="apartment-detail-content">	
		<h1><?php the_title(); ?></h1>
		<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
		<dl>
			<dt class="bed-data">Bedrooms</dt> <dd><?php $key="Bedrooms"; echo get_post_meta($post->ID, $key, true); ?></dd>
			<dt class="bath-data">Bathrooms</dt> <dd><?php $key="Bathrooms"; echo get_post_meta($post->ID, $key, true); ?></dd>
			<dt class="car-data">Cars</dt> <dd><?php $key="Cars"; echo get_post_meta($post->ID, $key, true); ?></dd>
		</dl>
		<?php the_content(); ?>
		<div class="apartment-detail-links">
			<?php /*?><a href="../../finish/<?php $key="Filename"; echo get_post_meta($post->ID, $key, true); ?>.pdf" target="_parent">Download Finish Schedule (pdf)</a><?php */?>
			<a href="../../floorplans/pdf/<?php $key="Filename"; echo get_post_meta($post->ID, $key, true); ?>.pdf" target="_parent">Download Floorplan (pdf)</a>
		</div>	
	</div>
	<div class="apartment-detail-floorplan">
		<img src="../../floorplans/small/<?php $key="Filename"; echo get_post_meta($post->ID, $key, true); ?>.png" alt="Enlarge Floorplan" width="450" height="450" />
	</div>
	<?php endwhile; // end of the loop. ?>
	
	</body>
</html>