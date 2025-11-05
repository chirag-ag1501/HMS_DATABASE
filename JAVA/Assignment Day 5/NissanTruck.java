public class NissanTruck implements Truck {
    private int axles;
    private int weight;
    private final String make = "Nissan";

    public NissanTruck(int axles, int weight) {
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
