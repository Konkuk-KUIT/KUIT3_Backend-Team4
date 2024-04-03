<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/navigation.jsp" %>
<div class="container" id="main">
    <header class="qna-header">
        <h2 class="qna-title">객체지향에서 가장 중요하다고 생각하는 것이 무엇인가요?</h2>
    </header>
    <div class="content-main">
        <article class="article">
            <div class="article-header">
                <div class="article-header-thumb">
                    <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                </div>
                <div class="article-header-text">
                    <!-- 사용자 프로필 추가 할거면 span -> a 태그로 바꾸고 API 연결 -->
                    <span class="article-author-name">강지윤</span>
                    <span class="article-header-time">
                              2024-03-24 02:00
                            </span>
                </div>
            </div>
            <div class="article-doc">
                <p>객체지향의 특징 4가지</p>
                <p>추상화</p>
                <p>캡슐화</p>
                <p>상속</p>
                <p>다형성</p>
                <p> ??? </p>
            </div>
            <div class="article-util">
                <ul class="article-util-list">
                    <li>
                        <!-- 수정, 삭제 API 연결 필요 -->
                        <a class="link-modify-article" href="/questions/423/form">수정</a>
                    </li>
                    <li>
                        <!-- 수정, 삭제 API 연결 필요 -->
                        <form class="form-delete" action="/questions/423" method="POST">
                            <input type="hidden" name="_method" value="DELETE">
                            <button class="link-delete-article" type="submit">삭제</button>
                        </form>
                    </li>
                    <li>
                        <a class="link-modify-article" href="../home.jsp">목록</a>
                    </li>
                </ul>
            </div>
        </article>

        <div class="qna-comment">
            <div class="qna-comment-kuit">
                <p class="qna-comment-count"><strong>2</strong>개의 의견</p>
                <div>
                    <article class="article" id="answer-1405">
                        <div class="article-header">
                            <div class="article-header-thumb">
                                <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                            </div>
                            <div class="article-header-text">
                                <span class="article-author-name">김정우</span>
                                <span class="article-header-time">
                                           2024-03-24 02:03
                                        </span>
                            </div>
                        </div>
                        <div class="article-doc comment-doc">
                            <p>장단점은 뭐라고 생각하세요?</p>
                        </div>
                        <div class="article-util">
                            <ul class="article-util-list">
                                <li>
                                    <!-- 수정, 삭제 API 연결 필요 -->
                                    <a class="link-modify-article" href="/questions/1/answers/1/form">수정</a>
                                </li>
                                <li>
                                    <!-- 수정, 삭제 API 연결 필요 -->
                                    <form class="delete-answer-form" action="/questions/1/answers/1" method="POST">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button type="submit" class="delete-answer-button">삭제</button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <article class="article" id="answer-1406">
                        <div class="article-header">
                            <div class="article-header-thumb">
                                <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                            </div>
                            <div class="article-header-text">
                                <span class="article-author-name">강지윤</span>
                                <span class="article-header-time">
                                          2024-03-24 02:10
                                        </span>
                            </div>
                        </div>
                        <div class="article-doc comment-doc">
                            <p>뭐..어쩌고저쩌고...</p>
                        </div>
                        <div class="article-util">
                            <ul class="article-util-list">
                                <li>
                                    <!-- 수정, 삭제 API 연결 필요 -->
                                    <a class="link-modify-article" href="/questions/1/answers/2/form">수정</a>
                                </li>
                                <li>
                                    <!-- 수정, 삭제 API 연결 필요 -->
                                    <form class="form-delete" action="/questions/1/answers/2" method="POST">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button type="submit" class="delete-answer-button">삭제</button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <form class="submit-write">
                        <div class="form-group" style="padding:14px;">
                            <textarea class="form-control" placeholder="Update your status"></textarea>
                        </div>
                        <button class="btn btn-primary pull-right" type="button">답변하기</button>
                        <div class="clearfix"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="../js/scripts.js"></script>
</body>
</html>