
<?php ob_start(); ?>
<!DOCTYPE html>
<html lang="cs">

<head>
    <title>Document</title>

    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri(); ?>/data/css/style.css" rel="stylesheet" type="text/css">
    <script src="<?php echo get_template_directory_uri(); ?>/data/js/jquery-3.6.0.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/data/js/jquery.validate.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/data/js/scripts.js"></script>
    <script src="https://kit.fontawesome.com/e11255fc99.js" crossorigin="anonymous"></script>

</head>

<body>

    <header class="header">
        <div class="left">
            <a href="<?php echo home_url(); ?>" class="logo">Nazdar Bazar</a>
        </div>

        <form action="<?php echo home_url(); ?>" method="GET" class="search">
            <input type="text" class="search-input" name="s" placeholder="Hledat knihu">
            <button class="search-btn">Hledat</button>
        </form>

        <nav>
            <ul>

                <?php if (is_user_logged_in()) { ?>
                    <?php $currentUser = wp_get_current_user(); ?>
                    <li class="nav-li"><a href="<?php echo get_author_posts_url($currentUser->ID); ?>" class="nav-link">Vaše položky</a></li>
                    <li class="nav-li"><a href="<?php echo wp_logout_url(home_url()); ?>" class="nav-link">Odhlásit</a></li>
                <?php } else { ?>
                    <li class="nav-li"><a href="<?php echo home_url(); ?>/prihlaseni" class="nav-link">Přihlásit</a></li>
                    <li class="nav-li"><a href="<?php echo home_url(); ?>/registrace" class="nav-link">Registrovat</a></li>
                <?php } ?>


                <!-- <li class="nav-li"><a href="<?php echo home_url(); ?>" class="nav-link">#</a></li>
                <li class="nav-li"><a href="<?php echo home_url(); ?>" class="nav-link">#</a></li>
                <li class="nav-li"><a href="<?php echo home_url(); ?>/prihlaseni" class="nav-link">Přihlásit</a></li>
                <li class="nav-li"><a href="<?php echo home_url(); ?>/registrace" class="nav-link">Registrovat</a></li> -->
            </ul>
        </nav>




    </header>

</body>

</html>