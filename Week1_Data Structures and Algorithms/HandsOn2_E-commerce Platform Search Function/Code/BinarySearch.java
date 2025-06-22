import java.util.Arrays;

public class BinarySearch {
    public static void sortProducts(Product[] products) {
        Arrays.sort(products); // uses Comparable<Product>
    }

    public static int searchById(Product[] products, int targetId) {
        int left = 0;
        int right = products.length - 1;

        while (left <= right) {
            int mid = (left + right) / 2;
            if (products[mid].productId == targetId) return mid;
            else if (products[mid].productId < targetId) left = mid + 1;
            else right = mid - 1;
        }

        return -1;
    }
}
