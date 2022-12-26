<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Menu</title>

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
            display: grid;
            grid-template-columns: 2fr 8fr;
            grid-template-rows: 1fr;
        }

        .menu {
            background: #777777;
            color: #000;
            padding: 10px;
            font-size: 1.5rem;
        }

        .menu__title {
            text-transform: uppercase;
            letter-spacing: 2px;
            font-size: 2rem;
        }

        .menu__list {
            padding: 5px;
        }

        .menu__item {
            position: relative;
            margin-top: 15px;
            display: inline-block;
            color: #414a54;
        }

        .menu__item::after {
            position: absolute;
            content: "";
            left: 0;
            bottom: -5px;
            width: 0;
            height: 3px;
            border-radius: 5px;
            background: #fa7c1b;
            transition: width .4s ease;
            color: #868686;
        }

        .menu__item:hover::after {
            width: 100%;
        }

        .page {
            padding: 2rem;
        }

        .page__title {
            font-size: 5rem;
        }

        .page__text {
            font-size: 2rem;
        }
    </style>
</head>
    <body>
        <div class="wrapper">
            <nav class="menu">
                <h2 class="menu__title">Menu</h2>
                <ul class="menu__list">
                    <li class="menu__item">
                        <a href="AllUsersServlet">Show all users</a>
                    </li>
                    <li class="menu__item">
                        <a href="LogoutServlet">Log out</a>
                    </li>
                </ul>
            </nav>
            <section class="page">
                <h1 class="page__title"><%="Hello, " + session.getAttribute("name")%></h1>
                <br>
                <span class="page__text">You logged in successfully</span>
            </section>
        </div>
    </body>
</html>
