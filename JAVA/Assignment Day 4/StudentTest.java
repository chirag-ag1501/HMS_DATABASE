import java.util.Scanner;

public class StudentTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Student[] students = new Student[3];

        for (int i = 0; i < students.length; i++) {
            students[i] = new Student();
            System.out.println("Enter details for Student " + (i + 1) + ":");
            
            System.out.print("Name: ");
            String name = sc.nextLine();
            
            System.out.print("Year of Joining: ");
            int year = Integer.parseInt(sc.nextLine());
            
            System.out.print("Salary: ");
            double salary = Double.parseDouble(sc.nextLine());
            
            System.out.print("Address: ");
            String address = sc.nextLine();

            students[i].setInfo(name, year, salary, address);
            System.out.println();
        }

        System.out.printf("%-10s %-15s %-10s %-20s%n", "Name", "Year of Joining", "Salary", "Address");
        System.out.println("---------------------------------------------------------------");

        for (Student s : students) {
            s.displayInfo();
        }

        sc.close();
    }
}
