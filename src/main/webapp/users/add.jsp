<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 13.02.2021
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
            <c:if test="${not empty errorMsg}">
                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                    <div class="card mb-4 py-3 border-bottom-danger">
                        <div class="card-body"> ${errorMsg} </div>
                    </div>
                </div>
            </c:if>
        </div>
        <div class="card-body">
            <form method="post">
                <div class="form-group">
                    <label for="userName">Nazwa</label>
                    <input type="text" class="form-control" id="userName" name="userName"
                           placeholder="Nazwa użytkownika">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email użytkownika">
                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input type="password" class="form-control" id="password" name="password"
                           placeholder="Hasło użytkownika">
                </div>
                <button type="submit" class="btn btn-primary">Zapisz</button>
            </form>
        </div>
    </div>
    <!-- /.container-fluid -->
</div>
<%@include file="footer.jsp" %>