package service.iService;

import java.util.List;

public interface EmployeeManagement<E> {
    void add(E e);
    void edit(E e);
    void delete (int id);
    List<E> getAll();

}
