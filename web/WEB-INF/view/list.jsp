<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리스트</title>
</head>
<body>
    <h1>리스트</h1>
    <div><a href="/board/write">글쓰기</a></div>
    <div>
        <c:choose>
            <c:when test="${fn:length(requestScope.list) == 0}">
                게시글이 없습니다.
            </c:when>
            <c:otherwise>
                <table>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>조회수</th>
                        <th>날짜</th>
                    </tr>
                    <c:forEach items="${requestScope.list}" var="item">
                        <tr>
                            <td>${item.iboard}</td>
                            <td><c:out value="${item.title}"/></td>
                            <td>${item.hits}</td>
                            <td>${item.rdt}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>