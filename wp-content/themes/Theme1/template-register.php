<?php
/*Template name: Registrace */
get_header();
?>

<main>
    <div class="register">
        <form action="">
        <h1>Registrovat</h1>
            <div class="register-div">
                <input type="email" name="email" placeholder="E-mail">
            </div>

            <div class="register-div">
                <input type="text" name="jmeno" placeholder="Uživatelské jméno">
            </div>


            <div class="register-div">
                <input type="password" name="heslo" placeholder="Heslo">
            </div>

            <div class="register-div">
                <input type="password" name="zopkujte heslo" placeholder="Zopakujte heslo">
            </div>
            <div class="register-div">
                    
                    <button class="formbtn">Registrovat</button>
            </div>


        </form>
    </div>
</main>