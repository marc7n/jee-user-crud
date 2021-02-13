<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 13.02.2021
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <h6 class="m-0 font-weight-bold text-primary">Usuwanie użytkownika</h6>
        </div>
        <div class="card-body">
            <form method="post">
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr>
                            <th>ID</th>
                            <td>${user.id}</td>
                        </tr>
                        <tr>
                            <th>Nazwa użytkownika</th>
                            <td><p>${user.userName}</td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>${user.email}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                Czy na pewno chcesz usunąć użytkownika:
                <button type="submit" name="action" value="delete" class="btn btn-primary">Usuń</button>
                <button type="submit" name="action" value="cancel" class="btn btn-primary">Anuluj</button>
            </form>
        </div>
    </div>
</div>
    <!-- /.container-fluid -->

    <%@include file="footer.jsp" %></html>