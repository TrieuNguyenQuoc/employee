<%--
  Created by IntelliJ IDEA.
  User: ACER NITRO 5
  Date: 8/7/2023
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <div class="col">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="home?action=getAll">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="home?action=add">Add home <span
                      class="sr-only">(current)</span></a>
            </li>
          </ul>
          <form action="home?action=search" method="post" class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                   name="search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
    </div>
  </div>
  <div class="row mt-5">
    <div class="col">
      <form action="home?action=add" method="post">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputName">Name</label>
            <input type="text" class="form-control" id="inputName" name="name" placeholder="Enter name">
          </div>
          <div class="form-group col-md-6">
            <label for="inputDateOfBirth">Email</label>
            <input type="text" class="form-control" id="inputDateOfBirth" name="email"
                   placeholder="Enter email">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputEmail">Address</label>
            <input type="text" class="form-control" id="inputEmail" name="address"
                   placeholder="Enter Address">
          </div>
          <div class="form-group col-md-6">
            <label for="inputAddress">PhoneNumber</label>
            <input type="text" class="form-control" id="inputAddress" name="phoneNumber" placeholder="Enter phone number">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="inputPhone">Salary</label>
            <input type="text" class="form-control" id="inputPhone" name="salary"
                   placeholder="Enter salary">
          </div>
          <div class="form-group col-md-6">
            <label for="inputClassroom">Classroom</label>
            <select id="inputClassroom" class="form-control" name="idDepartment">
              <c:forEach items="${departmentList}" var="department">
                <option value="${department.idDepartment}">${department.nameDepartment}</option>
              </c:forEach>
            </select>
          </div>
        </div>
        <button type="submit" class="btn btn-primary">ADD</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>
