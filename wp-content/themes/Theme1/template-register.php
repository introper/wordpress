<?php
/*Template name: Registrace */
get_header();

global $wpdb;

if ($_POST) {

    $email = $wpdb->escape($_POST['email']);
    $jmeno = $wpdb->escape($_POST['jmeno']);
    $heslo = $wpdb->escape($_POST['heslo']);
    $heslo2 = $wpdb->escape($_POST['heslo2']);

    $error = array();

    if(strpos($jmeno, ' ')!==false){
        $error['jmeno_space'] = "Jméno nesmí obsahovat mezeru";
    }

    if(empty($jmeno)){
        $error['jmeno_empty'] = "Jméno je povinné";
    }

    if(username_exists($jmeno)){
        $error['jmeno_exist'] = "Jméno již existuje";
    }

    if(!is_email($email)){
        $error['email_valid'] = "Email nemá správné hodnoty";
    }

    if(email_exists($email)){
        $error['email_exist'] = "Email je již zabrán";
    }

    if(strcmp($heslo , $heslo2) !==0) {
        $error['heslo'] = "Hesla se neshodují";
    }

    if(count($error) ==0){
        wp_create_user($jmeno, $heslo, $email);
        echo "Uživatel byl vytvořen";
        exit();
    }else{
        print_r($error);
    }
}

?>

<main>
    <div class="register">
        <form method="POST">
        <h1>Registrovat</h1>
            <div class="register-div">
                <input type="email" name="email" id="email" placeholder="E-mail">
            </div>

            <div class="register-div">
                <input type="text" name="jmeno" id="jmeno" placeholder="Uživatelské jméno">
            </div>


            <div class="register-div">
                <input type="password" name="heslo" id="heslo" placeholder="Heslo">
            </div>

            <div class="register-div">
                <input type="password" name="heslo2" id="heslo2" placeholder="Zopakujte heslo">
            </div>
            <div class="register-div">
                    
                    <button class="formbtn">Registrovat</button>
            </div>


        </form>
    </div>
</main>