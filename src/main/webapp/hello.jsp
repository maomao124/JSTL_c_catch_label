<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_c_catch_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/1
  Time(创建时间)： 21:25
  Description(描述)：
  JSTL <c:catch> 标签类似于 Java 中的 try-catch 方法，用来捕获 <c:catch> 标签中代码抛出的异常，并进行相应处理。
JSP <c:catch> 标签语法如下：
<c:catch [var="varname"] >
    需要捕获异常的代码
</c:catch>
其中，varname 用来存储捕获的异常信息
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    int num1 = 5;
    int num2 = 0;
%>
<c:catch var="varname">
    <%
        num1 = num1 / num2;
    %>
</c:catch>
<c:if test="${varname!=null}">
    异常！
    <c:out value="${varname}"/>
</c:if>
</body>
</html>
