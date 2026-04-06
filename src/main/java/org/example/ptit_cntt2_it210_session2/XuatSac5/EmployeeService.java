package org.example.ptit_cntt2_it210_session2.XuatSac5;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class EmployeeService {
    private List<Employee> employees = new ArrayList<>();

    public EmployeeService() {
        employees.add(new Employee("NV001", "Hưng", "Kế toán", 15000000, new Date(), "Đang làm"));
        employees.add(new Employee("NV002", "Quang", "Kỹ thuật", 26000000, new Date(), "Đang làm"));
        employees.add(new Employee("NV003", "Sơn", "Kinh doanh", 19500000, new Date(), "Nghỉ phép"));
        employees.add(new Employee("NV004", "Lợi", "Kỹ thuật", 12000000, new Date(), "Đang làm"));
        employees.add(new Employee("NV005", "Hoàn", "Kế toán", 22000000, new Date(), "Thử việc"));
    }

    public List<Employee> getAll() { return employees; }

    public Employee getByCode(String code) {
        return employees.stream().filter(e -> e.getCode().equals(code)).findFirst().orElse(null);
    }

    public double calculateTechDeptTotalSalary() {
        return employees.stream()
                .filter(e -> "Kỹ thuật".equals(e.getDepartment()))
                .mapToDouble(Employee::getSalary)
                .sum();
    }
}
