<%--
  Created by IntelliJ IDEA.
  Date: 8/7/2023
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container">
    <div class="card mt-4">
        <div class="card-header d-flex justify-content-between align-items-center">
            <a href="/home?action=add" class="btn btn-primary">Add</a>
            <div class="d-flex align-items-center">
                <form action="home" method="get" class="form-inline my-2 my-lg-0">
                    <input type="hidden" name="action" value="search">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                           name="search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>

            </div>
        </div>
        <div class="card-body">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Mã nhân viên</th>
                    <th scope="col">Tên nhân viên</th>
                    <th scope="col">Email</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Lương</th>
                    <th scope="col">Tên bộ phận</th>
                </tr>
                </thead>
                <tbody>


                    <c:forEach items="${employeeList}" var="employee">

                        <tr>
                            <th scope="row">${employee.id}</th>
                            <td>${employee.nameEmployee}</td>
                            <td>${employee.email}</td>
                            <td>${employee.address}</td>
                            <td>${employee.phoneNumber}</td>
                            <td>${employee.salary}</td>

                            <td>${employee.department.nameDepartment}</td>
                            <td>
                                <a href="home?action=edit&idEmployee=${employee.id}" class="btn btn-outline-primary">Edit</a>
                                <a class="btn btn-danger" href="home?action=delete&idEmployee=${employee.id}">Delete</a>
                            </td>
                        </tr>

                    </c:forEach>


                </tbody>


            </table>
        </div>
    </div>
</div>
</body>
</html>
