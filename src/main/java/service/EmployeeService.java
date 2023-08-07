package service;

import model.Department;
import model.Employee;
import service.connection.ConnectMySQL;
import service.iService.EmployeeManagement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeService  implements EmployeeManagement<Employee> {
    Connection connection =  ConnectMySQL.getConnection();
    @Override
    public void add(Employee employee) {
        String sql = "insert into employee (name, email, address, phoneNumber, salary, idDepartment)\n" +
                "values (?, ?, ?, ?,? ,?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1 , employee.getNameEmployee());
            preparedStatement.setString(2 , employee.getEmail());
            preparedStatement.setString(3 , employee.getAddress());
            preparedStatement.setString(4 , employee.getPhoneNumber());
            preparedStatement.setDouble(5 , employee.getSalary());
            preparedStatement.setInt(6 , employee.getIdDepartment());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void edit(Employee employee) {

    }

    @Override
    public void delete(int id) {
        String sql = "delete from employee where idEmployee = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1 , id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public List<Employee> getAll() {
        List<Employee> employeeList = new ArrayList<>();
        String sql = "select * from employee join department d on d.idDepartment = employee.idDepartment order by employee.idEmployee asc;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idEmployee = resultSet.getInt("idEmployee");
                String nameStudent = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                String phoneNumber = resultSet.getString("phoneNumber");
                double salary = resultSet.getDouble("salary");

                int idDepartment = resultSet.getInt("d.idDepartment");
                String nameDepartment = resultSet.getString("nameDepartment");
                Department department = new Department(idDepartment , nameDepartment);

                Employee employee = new Employee(idEmployee , nameStudent , email , address , phoneNumber , salary , department );
                employeeList.add(employee);
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return employeeList;
    }

    public List<Employee> search(String name){
        List<Employee> employeeList = new ArrayList<>();
        for (int i = 0; i < getAll().size(); i++) {
            if (getAll().get(i).getNameEmployee().toLowerCase().contains(name.toLowerCase())){
                employeeList.add(getAll().get(i));
            }
        }
        return employeeList;
    }
}
