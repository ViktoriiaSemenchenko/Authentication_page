<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All users</title>

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

        .table__title {
            font-size: 4rem;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 1.5rem;
            color: #fff;
        }

        .table {
            width: 70%;
            margin-bottom: 20px;
            border: 10px solid #fff;
            border-collapse: collapse;
            outline: 3px solid #fa7c1b;;
            background: #fff!important;
            color: #363E46;
        }

        .table th {
            font-weight: bold;
            padding: 7px;
            background: #fa7c1b;;
            border: none;
            text-align: left;
            font-size: 2rem;
            border-top: 3px solid #fff;
            border-bottom: 3px solid #fa7c1b;;
        }

        .table td {
            padding: 7px;
            border: none;
            border-top: 3px solid #fff;
            border-bottom: 3px solid #fff;
            font-size: 1.5rem;
        }

        .table tbody tr:nth-child(even){
            background: #f8f8f8!important;
        }

        .button {
            cursor: pointer;
            background: transparent;
        }

        .button > span {
            position: relative;
            display: inline-flex;
            width: 180px;
            height: 55px;
            perspective: 1000px;
        }

        .button span {
            pointer-events: none;
        }

        .button > span > span {
            font-size: 19px;
            letter-spacing: 1px;
            transform-style: preserve-3d;
            transform: translateZ(-25px);
            transition: transform .25s;
        }

        .button> span > span:before,
        .button > span > span:after {
            position: absolute;
            content: "go back";
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

        .button > span > span:before {
            color: #fff;
            background: #000;
            transform: rotateY(0deg) translateZ(25px);
        }

        .button > span > span:after{
            color: #000;
            transform: rotateX(90deg) translateZ(25px);
        }

        .button:hover > span > span{
            transform: translateZ(-25px) rotateX(-90deg);
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <table class="table">
            <caption class="table__title">All users</caption>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Login</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>
                            <c:out value="${user.getName()}" />
                        </td>
                        <td>
                            <c:out value="${user.getLogin()}" />
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <button onclick="history.back()" class="button">
            <span><span></span></span>
        </button>
    </div>
</body>
</html>