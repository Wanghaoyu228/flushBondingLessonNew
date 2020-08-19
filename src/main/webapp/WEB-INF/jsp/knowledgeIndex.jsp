<%@ page  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="utf-8">
<head>
    <script>
        window.dataLayer = window.dataLayer || [];
    </script>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="/static/css/c5.css" />
    <script src="/static/assets/js/jquery.min.js"></script>
    <script src="/static/js/mainContainer.js"></script>
    <title>HTML 教程</title>
</head>
<body class="html">
<div id="wrapper">
    <div id="navsecond">
        <div id="course">
            <c:forEach items="${titleList}" var="title">
                <h2>${title.name}</h2>
                <ul>
                    <c:forEach items="${detailList}" var="detail">
                        <c:if test="${detail.pid==title.id}">
                            <li><a onclick="showPage('/knowledge/getInfo?id=${detail.id}' , this)" title="${detail.name}">${detail.name}</a></li>
                        </c:if>
                    </c:forEach>
                </ul>

            </c:forEach>

        </div>
    </div>
    <div id="maincontent">
    </div>
</div>
<!-- wrapper end -->
</body>
<script>
    var ctx = '';
</script>
</html>