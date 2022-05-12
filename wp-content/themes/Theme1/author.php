<?php

get_header();

$id =  get_queried_object_id();
$userID = $id;
$userObject = get_queried_object();

?>


<main role="">

    <section class="main-section">
        <div class="container">
            <h2>Seznam knih uživatele <strong><?php echo $userObject->user_nicename; ?></strong></h2>
            <?php if (is_user_logged_in()) : ?>
                <?php $current = wp_get_current_user(); ?>
                <?php if ($current->ID == $userID) : ?>
                    <div class="flex-main">
                        <div class="menu">
                            <ul>
                                <li><a href="" class="createBook" data-target="create">Vytvořit</a></li>
                            </ul>
                        </div>
                        <?php
                        $arg = array(
                            "author" => $userID,
                            "post_type" => "kniha",
                            "post_posts_page" => -1,
                            "post_status" => "publish",
                        );
                        $query = new WP_Query($arg);
                        if ($query->have_posts()) :
                        ?>
                            <div class="block">

                                <?php while ($query->have_posts()) : $query->the_post(); ?>
                                    <div class="book-block editable" data-target="<?php echo $post->post_name; ?>">
                                        <a href="<?php echo get_the_permalink($post->ID); ?>" class="image-block">
                                            <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>" />
                                        </a><br>
                                        <div class="text-block">
                                            <h3><?php echo get_the_title($post->ID); ?></h3>
                                            <h3><?php echo get_field("cena", $post->ID); ?> Kč</h3>
                                            <p><?php echo get_the_excerpt($post->ID); ?></p>
                                            <a href="<?php echo get_the_permalink($post->ID); ?>" class="book-btn">Upravit</a>
                                        </div>
                                    </div>
                                <?php endwhile; ?>
                                <?php wp_reset_query(); ?>
                            </div>
                        <?php endif; ?>
                    </div>
                <?php else : ?>

                <?php endif; ?>
            <?php else : ?>
                <?php

                $arg = array(
                    "author" => $userID,
                    "post_type" => "kniha",
                    "post_posts_page" => -1,
                    "post_status" => "publish",
                );
                $query = new WP_Query($arg);
                if ($query->have_posts()) :
                ?>
                    <div class="flex-block">

                        <?php while ($query->have_posts()) : $query->the_post(); ?>
                            <div class="book-block">
                                <a href="<?php echo get_the_permalink($post->ID); ?>" class="image-block">
                                    <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="<?php echo get_the_title($post->ID); ?>" />
                                </a>
                                <div class="text-block">
                                    <h3><?php echo get_the_title($post->ID); ?></h3>
                                    <p><?php echo get_the_excerpt($post->ID); ?></p>
                                    <a href="<?php echo get_the_permalink($post->ID); ?>" class="btn">Zobrazit</a>
                                </div>
                            </div>
                        <?php endwhile; ?>
                        <?php wp_reset_query(); ?>
                    </div>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </section>

</main>


<?php if (is_user_logged_in()) : ?>
    <?php $current = wp_get_current_user(); ?>
    <?php if ($current->ID == $userID) : ?>

        <?php
        $arg = array(
            "author" => $userID,
            "post_type" => "kniha",
            "post_posts_page" => -1,
            "post_status" => "publish",
        );
        $query = new WP_Query($arg);
        if ($query->have_posts()) : ?>
            <?php while ($query->have_posts()) : $query->the_post(); ?>
                <?php
                $idPost = $post->ID;
                ?>
                <?php if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['form' . $idPost])) : ?>
                    <?php

                    $desc = getFilter(INPUT_POST, "text");
                    $price = getFilter(INPUT_POST, "cena");
                    $cat = getFilter(INPUT_POST, "kategorie");
                    if ($cat) :
                        wp_set_post_categories($newPost, $cat);
                    endif;
                    if ($desc) :
                        update_post_meta($idPost, "popisek", $desc);
                    endif;

                    if ($price) :
                        update_post_meta($idPost, "cena", $price);
                    endif;

                    wp_redirect(get_author_posts_url($userID));

                    ?>
                <?php endif; ?>
                <div class="popup" id="<?php echo $post->post_name; ?>">
                    <div class="exit">
                        <h2>X</h2>
                    </div>
                    <div class="modal-container">
                        <h3>Upravit knihu <strong><?php echo get_the_title($post->ID); ?></strong></h3>
                        <form action="" method="POST">
                            <div>
                                <h4>Upravit popis knihy</h4>
                                <textarea name="text" id="" class="popisek">
                                    <?php echo get_field("popisek", $post->ID); ?>
                                </textarea>
                            </div>

                            <div>
                                <h4>Upravit cenu knihy</h4>
                                <input type="number" name="cena" value="<?php echo get_field("cena", $post->ID); ?>" id="">
                            </div>
                            <!-- <div class="kat">
                                <?php $categories = get_terms("kategorie", array("hide_empty" => false, "parent" => 0)); ?>
                                <?php if ($categories) : ?>
                                    <div class="menu">
                                        <select name="kategorie" class="kategorie">
                                            <?php foreach ($categories as $item) : ?>
                                                <?php if ($item) : ?>
                                                    <option value="<?php echo $item->term_id; ?>"><?php echo $item->name; ?></option>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                <?php endif; ?>
                                <br>
                            </div> -->
                            <div>
                                <button class="post-btn" type="submit" name="form<?php echo $idPost; ?>">Odeslat</button>
                            </div>
                        </form>
                    </div>
                </div>
            <?php endwhile; ?>
            <?php wp_reset_query(); ?>
            <div class="filter-back"></div>
        <?php endif; ?>
    <?php endif; ?>
<?php endif; ?>


<?php if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['create-book'])) : ?>
    <?php
    $title = getFilter(INPUT_POST, "titulek");
    if ($title) :
        $arg = array(
            "author" => $userID,
            "post_type" => "kniha",
            "post_title" => $title,
            "post_status" => "publish",

        );
        $newPost = wp_insert_post($arg);
        if ($newPost) :
            $desc = getFilter(INPUT_POST, "popisek");
            $price = getFilter(INPUT_POST, "cena");
            $cat = getFilter(INPUT_POST, "kategorie");
            if ($cat) :
                wp_set_post_categories($newPost, $cat);
            endif;
            if ($desc) :
                update_post_meta($newPost, "popisek", $desc);
            endif;

            if ($price) :
                update_post_meta($newPost, "cena", $price);
            endif;

            $wp_upload_dir = wp_upload_dir();
            $it = 0;
            $files = $_FILES;
            foreach ($files as $key => $row) :
                if ($row != null) :
                    $it++;


                    if ($row["type"] == "image/png" || $row["type"] == "image/jpeg" || $row["type"] == "image/svg+xml" || $row["type"] == "application/pdf") :
                        $wp_filetype = wp_check_filetype($row["name"], null);
                        move_uploaded_file($row["tmp_name"], $wp_upload_dir["path"] . "/" . $row["name"]);
                        $attach = array(
                            "guid" => $wp_upload_dir["url"] . "/" . basename($row["name"]),
                            "post_mime_type" => $wp_filetype["type"],
                            "post_content" => "",
                            'post_title'     => preg_replace('/\.[^.]+$/', '', basename($row["name"])),
                            "post_status" => "inherit"
                        );
                        $filename = $wp_upload_dir['path']  . '/' . $row["name"];
                        $image_id = wp_insert_attachment($attach, $filename);
                        require_once(ABSPATH . 'wp-admin/includes/image.php');
                        $attach_data = wp_generate_attachment_metadata($image_id, $filename);
                        $url = wp_get_attachment_url($image_id);
                        wp_update_attachment_metadata($image_id, $attach_data);
                        if ($key == 0) :
                            set_post_thumbnail($newPost, $image_id);
                        endif;
                        $s = update_row("galerie", $it + 1, array("obrazek" => $image_id), $newPost);
                    endif;
                endif;
            endforeach;

            wp_redirect(get_author_posts_url($userID));
        endif;
    endif;

    ?>
<?php endif; ?>

<div class="popup" id="create">
    <div class="exit">
        <h2>X</h2>
    </div>
    <div class="modal-container">
        <h3>Přidat novou knihu</h3>
        <form action="" method="POST" enctype="multipart/form-data">
            <div>
                <h4>Název knihy</h4>
                <input type="name" name="titulek" id="" placeholder="Název nové knihy" value="<?php echo get_field("", $post->ID); ?>">
            </div>
            <div>
                <h4>Popis knihy</h4>
                <textarea name="popisek" id="" class="popisek">
                      <?php echo get_field("", $post->ID); ?>
                </textarea>
            </div>
            <div>
                <h4>Cena knihy</h4>
                <input type="number" name="cena" value="<?php echo get_field("", $post->ID); ?>" id="">
            </div>
            <div>
                <h4>Vyberte fotografii</h4>
                <input type="file" name="files" multiple id="">
            </div>
            <!-- <div class="kat">
                <?php $categories = get_terms("kategorie", array("hide_empty" => false, "parent" => 0)); ?>
                <?php if ($categories) : ?>
                    <div class="menu">
                        <select name="kategorie" class="kategorie">
                            <?php foreach ($categories as $item) : ?>
                                <?php if ($item) : ?>
                                    <option value="<?php echo $item->term_id; ?>"><?php echo $item->name; ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>
                    </div>
                <?php endif; ?>
                <br>
            </div> -->
            <div>
                <button class="post-btn" type="submit" name="create-book">Odeslat</button>
            </div>

        </form>
    </div>
</div>