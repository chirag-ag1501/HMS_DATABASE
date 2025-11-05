public class Employee {
    private double salary;
    private int hoursPerDay;

    // Method 1: Takes salary and working hours as input
    public void getInfo(double salary, int hoursPerDay) {
        this.salary = salary;
        this.hoursPerDay = hoursPerDay;
    }

    // Method 2: Adds $10 to salary if it's less than $500
    public void addSal() {
        if (salary < 500) {
            salary += 10;
        }
    }

    // Method 3: Adds $5 if working hours per day > 6
    public void addWork() {
        if (hoursPerDay > 6) {
            salary += 5;
        }
    }

    // Display final salary
    public void printFinalSalary() {
        System.out.println("Final Salary of Employee: $" + salary);
    }
}
