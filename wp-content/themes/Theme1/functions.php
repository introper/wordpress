<?php 


add_theme_support('post-thumbnails', array("post","kniha"));

function cpt_kniha()
{
    $labels = array(
        'name' => _x('Kniha', 'post type general name', 'your-plugin-textdomain'),
        'singular_name' => _x('Kniha', 'post type singular name', 'your-plugin-textdomain'),
        'edit_item' => __('Upravit knihu', 'your-plugin-textdomain'),
        'view_item' => __('Zobrazit knihu', 'your-plugin-textdomain'),
        'all_items' => __('Všechny knihy', 'your-plugin-textdomain'),
        'search_items' => __('Vyhledat knihy', 'your-plugin-textdomain'),
        'parent_item_colon' => __('Superior:', 'your-plugin-textdomain'),
        'not_found' => __('Kniha nebyla nalezena.', 'your-plugin-textdomain'),
        'not_found_in_trash' => __('Kniha byla nazelezena v koši.', 'your-plugin-textdomain')
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'kniha'),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => null,
        'supports' => array('title', "page-attributes", "post-formats", "thumbnail","editor"),
        "show_in_rest" => true
    );
    register_post_type('kniha', $args);
}

add_action('init', 'cpt_kniha', 0);

function codex_taxonomy_kniha()
{
    $labels = array(
        'name'              => _x('Kategorie', 'taxonomy general name', 'textdomain'),
        'singular_name'     => _x('Kategorie', 'taxonomy singular name', 'textdomain'),
        'search_items'      => __('Vyhledat kategorii', 'textdomain'),
        'all_items'         => __('Kategorie', 'textdomain'),
        'parent_item'       => __('Kategorie', 'textdomain'),
        'parent_item_colon' => __('Kategorie:', 'textdomain'),
        'edit_item'         => __('Upravit kategorii', 'textdomain'),
        'update_item'       => __('Upravit kategorii', 'textdomain'),
        'add_new_item'      => __('Přidat kategorii', 'textdomain'),
        'new_item_name'     => __('Nová kategorie', 'textdomain'),
        'menu_name'         => __('Kategorie', 'textdomain'),
    );

    $args = array(
        'hierarchical'      => true,
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array('slug' => 'kategorie'),
    );

    register_taxonomy('kategorie', array('kniha'), $args);
}
add_action('init', 'codex_taxonomy_kniha', 0);



function getFilter($type, $name)
{
    return htmlspecialchars(strip_tags(filter_input($type, $name)));
}