public class Product implements Comparable<Product> {
    public final int productId;
    public final String productName;
    public final String category;

    public Product(int productId, String productName, String category) {
        this.productId = productId;
        this.productName = productName;
        this.category = category;
    }

    public void printDetails() {
        System.out.println("Id: " + productId);
        System.out.println("Name: " + productName);
        System.out.println("Category: " + category);
        System.out.println();
    }

    @Override
    public int compareTo(Product other) {
        return Integer.compare(this.productId, other.productId);
    }
}
