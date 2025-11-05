import java.util.Scanner;

public class EmployeeTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Employee emp = new Employee();

        System.out.print("Enter Employee Salary: ");
        double salary = sc.nextDouble();

        System.out.print("Enter Working Hours per Day: ");
        int hours = sc.nextInt();

        emp.getInfo(salary, hours);
        emp.addSal();
        emp.addWork();
        emp.printFinalSalary();

        sc.close();
    }
}
import java.util.Scanner;

public class EmployeeTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Employee emp = new Employee();

        System.out.print("Enter Employee Salary: ");
        double salary = sc.nextDouble();

        System.out.print("Enter Working Hours per Day: ");
        int hours = sc.nextInt();

        emp.getInfo(salary, hours);
        emp.addSal();
        emp.addWork();
        emp.printFinalSalary();

        sc.close();
    }
}
