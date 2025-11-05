package assignments;
import java.util.Scanner;

public class ITCityChecker {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter city name: ");
        String city = sc.nextLine().trim().toLowerCase();

        switch (city) {
            case "delhi":
            case "mumbai":
            case "kolkatta":
            case "bangalore":
            case "chennai":
            case "hyderabad":
                System.out.println(city.substring(0, 1).toUpperCase() + city.substring(1) + " is an IT City.");
                break;
            default:
                System.out.println(city.substring(0, 1).toUpperCase() + city.substring(1) + " is not an IT City.");
        }

        sc.close();
    }
}