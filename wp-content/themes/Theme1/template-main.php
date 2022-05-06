<?php
/*Template name: Hlavní stránka */

get_header();


?>


<main role="main">

    <section class="main-section">
        <div class="container">
            <h2>Seznam knih</h2>
            <div class="main-flex">
                <?php $categories = get_terms("kategorie", array("hide_empty" => false)); ?>
                <?php if ($categories) : ?>
                    <div class="menu">
                        <ul>
                            <?php foreach ($categories as $item) : ?>
                                <?php if ($item) : ?>
                                    <li><a href="<?php echo get_term_link($item->term_id); ?>"><?php echo $item->name; ?></a></li>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <?php

                $arg = array(
                    "post_type" => "kniha",
                    "post_posts_page" => -1,
                    "post_status" => "publish"
                );
                $query = new WP_Query($arg);
                if ($query->have_posts()) :
                ?>
                    <div class="block">
                        <?php while ($query->have_posts()) : $query->the_post(); ?>
                            <div class="book-block">
                                <a href="<?php echo get_the_permalink($post->ID); ?>" class="image-block">
                                    <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>">
                                </a> <br>
                                <div class="text-block">
                                    <h3><?php echo get_the_title($post->ID); ?></h3>
                                    <h3><?php echo get_field("cena", $post->ID); ?> Kč</h3>
                                    <p><?php echo get_the_excerpt($post->ID); ?></p>
                                    <!-- <div class="btn-block"> -->
                                        <a href="<?php echo get_the_permalink($post->ID); ?>" class="book-btn">Zobrazit</a>
                                    <!-- </div> -->
                                </div>
                            </div>
                        <?php endwhile; ?>
                        <?php wp_reset_query(); ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </section>


</main>