public class FordTruck implements Truck {
    private int axles;
    private int weight;
    private final String make = "Ford";

    public FordTruck(int axles, int weight) {
        this.axles = axles;
        this.weight = weight;
    }

    public int getAxles() {
        return axles;
    }

    public int getWeight() {
        return weight;
    }

    public String getMake() {
        return make;
    }
}
