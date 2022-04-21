<?php
    require '../orm/db.php';

    if ($_GET['query'] == 'newbuilding_recommendations') {
        $response = file_get_contents('https://api.cian.ru/newbuilding-search/v1/get-newbuilding-recommendations/?regionId=4602&size=3&pageType=desktop');
        $json = '{"status": "ok", "response": '.$response.'}';
        echo $json;
    }

    if ($_GET['query'] == 'news') {
        if ($_GET['limit'] > 0) {
            $news = R::findAll('news', 'ORDER BY id DESC LIMIT '.$_GET['limit']);
            $new_arr = array();
            foreach ($news as $new) {
                array_push($new_arr, ['id'=>$new['id'], 'rubrika'=>$new['rubrika'], 'title'=>$new['title'], 'text'=>$new['text'], 'photo'=>$new['photo'], 'autor'=>$new['autor'], 'date'=>$new['date'], 'views'=>$new['views']]);
            }
            $arr = ['status'=>'ok', 'news'=>$new_arr];
            $json = json_encode($arr);
            echo $json;
        } else {
            $news = R::findAll('news', 'ORDER BY id DESC');
            $new_arr = array();
            foreach ($news as $new) {
                array_push($new_arr, ['id'=>$new['id'], 'rubrika'=>$new['rubrika'], 'title'=>$new['title'], 'text'=>$new['text'], 'photo'=>$new['photo'], 'autor'=>$new['autor'], 'date'=>$new['date'], 'views'=>$new['views']]);
            }
            $arr = ['status'=>'ok', 'news'=>$new_arr];
            $json = json_encode($arr);
            echo $json;
        }
    }

    if ($_GET['query'] == 'email') {
        $user = R::findOne('users', 'WHERE `email` = "'.$_GET['email'].'"');
        if ($user) {
            $arr = ['status'=>'ok', 'email'=>true];
            $json = json_encode($arr);
            echo $json;
        } else {
            $arr = ['status'=>'ok', 'email'=>false];
            $json = json_encode($arr);
            echo $json;
        }
    }

    if ($_POST['auch'] == 'reg') {
        $user = R::dispense('users');
        $user->name = $_POST['name'];
        $user->surname = $_POST['surname'];
        $user->position = 1;
        $user->photo = '';
        $user->phone = '';
        $user->email = $_POST['email'];
        $user->password = md5($_POST['pass']);
        R::store($user);
        $arr = ['status'=>'successful'];
        $json = json_encode($arr);
        echo $json;
    }

    if ($_POST['auch'] == 'log') {
        $user = R::findOne('users', 'WHERE `email` = "'.$_POST['login'].'" OR `phone` = "'.$_POST['login'].'"');
        if ($user) {
            if (md5($_POST['pass']) == $user->password) {
                $_SESSION['user'] = $user;
                $arr = ['status'=>'successful'];
                $json = json_encode($arr);
                echo $json;
            } else {
                $arr = ['status'=>'error', 'message'=>'Неверно введен пароль!'];
                $json = json_encode($arr);
                echo $json;
            }
        } else {
            $arr = ['status'=>'error', 'message'=>'Пользователь не найден!'];
            $json = json_encode($arr);
            echo $json;
        }
    }

    if ($_GET['auch'] == 'out') {
        unset($_SESSION['user']);
        $arr = ['status'=>'successful'];
        $json = json_encode($arr);
        echo $json;
    }