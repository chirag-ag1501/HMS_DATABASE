public class AlleghenyTollBooth implements TollBooth {
    private int totalTrucks;
    private double totalReceipts;

    public AlleghenyTollBooth() {
        totalTrucks = 0;
        totalReceipts = 0.0;
    }

    public void calculateToll(Truck truck) {
        System.out.println("Arrival of " + truck.getMake() + " Truck");

        int axles = truck.getAxles();
        int weight = truck.getWeight();

        double tollDue = (5 * axles) + ((weight / 500.0) * 10);
        System.out.println("Truck arrival - Axles: " + axles +
                " Total weight: " + weight + " Toll due: $" + (int)tollDue);

        totalTrucks++;
        totalReceipts += tollDue;
    }

    public void displayData() {
        System.out.println("Totals since last collection - Receipts: $" +
                (int)totalReceipts + " Trucks: " + totalTrucks);
    }

    public void collectReceipts() {
        System.out.println("\n*** Collecting receipts  ***");
        displayData();
        System.out.println("\n***** Reset Receipts **********");
        totalReceipts = 0;
        totalTrucks = 0;
        displayData();
    }
}
