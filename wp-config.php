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
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'brozovic' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
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
define( 'AUTH_KEY',         'Ms0pIth.nXHO;5@I8X^M@Mc7m!+AgA.C0}4so2Zpc0g&S~.q(|S}c}%N=L7Y}!32' );
define( 'SECURE_AUTH_KEY',  'K=%Z:|hv&W%7g/|peN$rJb$1j@j96a<}$j(SwjMYxr?v8+Se@X=18SF%*}an[tBs' );
define( 'LOGGED_IN_KEY',    '{MN{JC{& B}g qu)D,Dli9GnczBs~LdyJ7lM9w]v0^ukO=^WJ1v2JB3.uBBzjvf9' );
define( 'NONCE_KEY',        'j5gpfr?/AB<{Y35!_nLnDTkm1z.-t{!s5[ }dF}X9KjIl+bKx!GH;=6%Yo7ZM#?p' );
define( 'AUTH_SALT',        'Tzs*_5@96L,Tm<hg@/,.sKbIAky`zKytz]3o}})ht3z2<b&kDb<?ENwtC&Nl:bhL' );
define( 'SECURE_AUTH_SALT', ';Hs#/}pC1YVu$]I4l#1*8<:,-AhcN@S~{{t_[/d7{awcj5`ZaOeI*`T!56su){O}' );
define( 'LOGGED_IN_SALT',   'HL!r&ABV2l^ueov8ls/j|ZvsXK=qO<`*OD,.=)<:Am+ucQ8uq4NqD8G2%Cb}Sv}a' );
define( 'NONCE_SALT',       'u+r[j0R[[0du{R#5oi77^j+_IX)g8eJ^6BB*`x/@w@cykB+H[;9.PVuXo8IlRB(8' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
