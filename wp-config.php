<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'barkala_wordpress');

/** MySQL database username */
define('DB_USER', 'barkala_admin');

/** MySQL database password */
define('DB_PASSWORD', 'Ss)-FsBV?3PF');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '6wiJe_$gA3JU+E{,|j/1y}gRxNYf;z[RF4iPfmEdGy1W8]Yn@e@V4e:Z^Pg]eFrD');
define('SECURE_AUTH_KEY',  'eKbC47Wkh2@7taru{;y#<Ms&?MT*hQRl)o!x0}6S$;{+C9x6#f#%7Wy<L&_/Gj[z');
define('LOGGED_IN_KEY',    '`$!~GzuvWBu.+S^<vR^5)7[5GG)Aq1nD|(:C;ry)b+uu+*/!K|q,ei9TI9]+Gs+!');
define('NONCE_KEY',        'AK[*J0:!+2WL:[f.yg[3zy:Hl[;Dhp9-$lZ,;Jk56=LgG5WDuC8HB37N7#U+?cUG');
define('AUTH_SALT',        'X6MDkLDx,JF4ovZ9ug%NiDav!{coQ9K*c:)sHbyX4Rd208|^3gxN%7V@xaYtTN|g');
define('SECURE_AUTH_SALT', '9db/{*-/E+6_/e$-}aet;.qgD.2%Ra51/Yx={eTVAPs#SyW-PEh242(Erj#)~0*5');
define('LOGGED_IN_SALT',   'b-&Ftv^T*|<;.pQW!d <q&SN7GN)54WD(?jMYY&+A[ bl4;4sZqX?Zn-tc,N&XjL');
define('NONCE_SALT',       'N1p*NzUVT/)_0dxBrC7V9|{S-Z8IjIpJ$t =neQrdP/Kh+5>o :b$X:}W{S)F-gL');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);
define('RELOCATE',true);
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
