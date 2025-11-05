public class Student {
    private String name;
    private int yearOfJoining;
    private String address;
    private double salary;

    // Method to get information
    public void setInfo(String name, int yearOfJoining, double salary, String address) {
        this.name = name;
        this.yearOfJoining = yearOfJoining;
        this.salary = salary;
        this.address = address;
    }

    // Method to display student info
    public void displayInfo() {
        System.out.printf("%-10s %-15d %-10.2f %-20s%n", name, yearOfJoining, salary, address);
    }
}
