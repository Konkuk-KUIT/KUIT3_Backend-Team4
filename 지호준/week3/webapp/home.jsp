<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <%@ include file="./include/header.jsp" %>
</head>
<body>
<%@ include file="./include/navigation.jsp" %>
<div class="container" id="main">
    <h2>Q&A</h2>
    <div class="qna-list">
        <ul class="list">
            <li>
                <div class="wrap">
                    <div class="main">
                        <strong class="subject">
                            <a href="./qna/show.jsp"> 객체지향에서 가장 중요하다고 생각하는 것이 무엇인가요? </a>
                        </strong>
                        <div class="auth-info">
                            <i class="icon-add-comment"></i>
                            <span class="time">2024-03-24 02:10</span>
                            <span clas="author">강지윤</span>
                        </div>
                        <div class="reply" title="댓글">
                            <i class="icon-reply"></i>
                            <span class="point">12</span>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="wrap">
                    <div class="main">
                        <strong class="subject">
                            <a href="./qna/show.jsp"> 동아리에 시간 얼마나 투자할 수 있는지? </a>
                        </strong>
                        <div class="auth-info">
                            <i class="icon-add-comment"></i>
                            <span class="time">2024-03-24 02:13</span>
                            <span class="author">강지윤</span>
                        </div>
                        <div class="reply" title="댓글">
                            <i class="icon-reply"></i>
                            <span class="point">8</span>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-5">
                <ul class="pagination" style="display:align-items-center;">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item active" aria-current="page">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-2 qna-write">
                <a href="./qna/form.jsp" class="btn btn-primary pull-right" role="button">질문하기</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>