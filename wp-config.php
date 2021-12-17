<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'optimum' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'p,0L#w>^q)sVZWitkUouO015<rR;<1S$r>bseIqE%&p}Zfxgfgp2|6d,%Zz7%UF4' );
define( 'SECURE_AUTH_KEY',  '0df|c1e^kX|5#?yt}?n D?v<(*|U!9/s8uzC@<GpsN$7`Lb@~,~EkPy7u=:{;J@)' );
define( 'LOGGED_IN_KEY',    'PHg0!VKkhkp%^W&L>ldbyQTSo}jdDcJ&4m1nnS$J6+ nL^.8%{Y53_^pB}@~b&id' );
define( 'NONCE_KEY',        'c[F# .f(]`.Zt6pyG bop$qRxyzp]sFqj1@*y)Vxue&FAN[2h$! Vh7 RcZ<f=[I' );
define( 'AUTH_SALT',        '9? zmr`1f(%MPl{*cu=*<$/9|_]9UZHOT<7ibEQK@4>KaZ0:9> !iS^YMEB/;l@<' );
define( 'SECURE_AUTH_SALT', '`/t;r/-d0acgB?4m+GDKL74WP6=Ixvj,>NJHR>EG-?@`}9OoRr>A1Ez!)}h1+doZ' );
define( 'LOGGED_IN_SALT',   'd+V~18s{3 R-FIne?y{Tf0P?%N3HFE`lHCulMvf3f|B1>HFHcJF]?OA0a!6u-Ll7' );
define( 'NONCE_SALT',       '7BKpiu*vr =Dp/1g*]chXu]C<$7f9/&(jOpRDwKgNW+5SaMi1c|sNNu[9jvwx55b' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_opti_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
