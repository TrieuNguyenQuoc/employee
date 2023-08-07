package service;

import model.Department;
import service.connection.ConnectMySQL;
import service.iService.DepartmentManagement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DepartmentService implements DepartmentManagement<Department> {
    Connection connection = ConnectMySQL.getConnection();
    @Override
    public void add(Department department) {

    }

    @Override
    public void edit(Department department) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<Department> getAll() {
        String sql = "select * from department;";
        List<Department> departmentList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
           while (resultSet.next()){
               int id = resultSet.getInt("idDepartment");
               String name = resultSet.getString("nameDepartment");
               Department department = new Department(id , name);
               departmentList.add(department);
           }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return departmentList;
    }
}
