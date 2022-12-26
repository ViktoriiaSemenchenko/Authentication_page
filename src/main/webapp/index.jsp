<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        *, *::before, *::after {
            padding: 0;
            margin: 0;
            border: 0;
            box-sizing: border-box;
        }

        *:focus, *:active {
            outline: none;
        }

        a, a:visited, a:hover {
            text-decoration: none;
        }

        a {
            color: inherit;
        }

        ul, ol, li {
            list-style: none;
        }

        h1, h2, h3, h4, h5, h6 {
            font-weight: inherit;
            font-size: inherit;
        }

        html, body {
            height: 100%;
            font-family: sans-serif;
            font-weight: 400;
            line-height: 1;
            font-size: 16px;
            color: #fff;
            background: #363E46;
        }

        input, button, textarea {
            font-family: inherit;
        }

        img {
            vertical-align: top;
        }

        .wrapper {
            min-height: 100%;
            max-width: 100%;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .login-page {
            display: flex;
            flex-direction: column;
            width: 50vw;
            padding: 20px;
            border-radius: 34px;
            background: #363e46;
            box-shadow:  9px 9px 18px #2b3238,
            -9px -9px 18px #414a54;
        }

        .login-page__form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .login-page__title {
            font-size: 8rem;
            margin-bottom: 100px;
            align-self: center;
            text-transform: uppercase;
            letter-spacing: 0.1rem;
        }

        .login-page__form > *:not(:first-child) {
            margin-top: 30px;
        }

        .form__login,
        .form__password {
            position: relative;
            width: 70%;
            flex-grow: 1;
        }

        input {
            width: 100%;
            padding: 20px 10px;
            font-size: 1.25rem;
            border-radius: 10px;
            background: transparent;
            border: 2px solid #565656;
        }

        label {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translate(10px, -50%);
            color: rgba(0, 0, 0, 0.5);
            pointer-events: none;
            transition: all .4s ease;
            background: #363e46;
            padding: 0 4px;
            font-size: 1.5rem;
        }

        .login-page__form  input:focus + label,
        .login-page__form  input:focus + label,
        .login-page__form input:not(:placeholder-shown) + label {
            top: 0;
            font-size: 1.25rem;
            transform: translate(10px, -100%);
            color: rgba(0, 0, 0, 1);
        }

        .form__button {
            cursor: pointer;
            background: transparent;
        }

        .form__button > span {
            position: relative;
            display: inline-flex;
            width: 180px;
            height: 55px;
            perspective: 1000px;
        }

        .form__button span {
            pointer-events: none;
        }

        .form__button > span > span {
            font-size: 19px;
            letter-spacing: 1px;
            transform-style: preserve-3d;
            transform: translateZ(-25px);
            transition: transform .25s;
        }

        .form__button > span > span:before,
        .form__button > span > span:after {
            position: absolute;
            content: "submit";
            text-transform: uppercase;
            height: 55px;
            width: 180px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 5px solid black;
            box-sizing: border-box;
            border-radius: 5px;
        }

        .form__button > span > span:before {
            color: #fff;
            background: #000;
            transform: rotateY(0deg) translateZ(25px);
        }

        .form__button > span > span:after{
            color: #000;
            transform: rotateX(90deg) translateZ(25px);
        }

        .form__button:hover > span > span{
            transform: translateZ(-25px) rotateX(-90deg);
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="login-page">
            <h1 class="login-page__title">Log in</h1>
            <form class="login-page__form form" action="LoginPageServlet" method="post">
                <div class="form__login">
                    <input id="login" name="login" type="text" placeholder=" " required />
                    <label for="login">Login</label>
                </div>
                <div class="form__password">
                    <input id="password" name="password" type="password" placeholder=" " required />
                    <label for="password">Password</label>
                </div>
                <button class="form__button" type="submit">
                    <span><span></span></span>
                </button>
            </form>
        </div>
    </div>
</body>
</html>