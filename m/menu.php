<a class="m_a" href="#" onclick="menu_off()"><img class="ma_img" src="../../img/line_left.svg">Закрыть</a>
<h3 class="m_h3">Личный кабинет</h3>
<?php if (isset($_SESSION['user'])) : ?>
    <a class="ma_user" href="/m/lk">
        <img class="mau_img" src="/img/users/<?php echo $_SESSION['user']->photo ?>">
        <div class="mau_text">
            <h4 class="maut_h4"><?php echo $_SESSION['user']->surname ?> <?php echo $_SESSION['user']->name ?></h4>
            <p class="maut_p">Личный кабинет</p>
        </div>
    </a>
    <a class="m_a" href="#" onclick="logout()"><img class="ma_img" src="../../img/log_out.svg">Выйти</a>
<?php else : ?>
    <a class="m_a" href="/m/lk"><img class="ma_img" src="../../img/log_up.svg">Войти</a>
<?php endif ?>
<h3 class="m_h3">Меню</h3>
<a class="m_a" href="/">Главная</a>
<a class="m_a" href="/m/news">Новости</a>
<script>
    function logout() {
        $.ajax({
            url: '/api/',
            method: 'get',
            dataType: 'json',
            data: {auch: 'out'},
            success: function(data) {
                $(location).attr('href', '/m')
            }
        });
    }
</script>