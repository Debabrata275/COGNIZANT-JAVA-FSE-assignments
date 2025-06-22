import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        Product[] products = {
            new Product(4, "Chair", "Furniture"),
            new Product(2, "Apple", "Fruit"),
            new Product(3, "Potato", "Grocery"),
            new Product(1, "Laptop", "Electronics"),
            new Product(5, "Notebook", "Stationery")
        };

        BinarySearch.sortProducts(products);  // Sort before binary search

        System.out.println("----- E-Commerce Product Search -----");
        System.out.print("Search by (1) ID or (2) Name? Enter 1 or 2: ");
        int choice = scanner.nextInt();
        scanner.nextLine(); // consume newline

        int index = -1;

        if (choice == 1) {
            System.out.print("Enter Product ID to search: ");
            int id = scanner.nextInt();
            index = BinarySearch.searchById(products, id);
        } else if (choice == 2) {
            System.out.print("Enter Product Name to search: ");
            String name = scanner.nextLine();
            index = LinearSearch.searchByName(products, name);
        } else {
            System.out.println("Invalid choice!");
            scanner.close();
            return;
        }

        displayResult(products, index);
        scanner.close();
    }

    public static void displayResult(Product[] products, int index) {
        if (index != -1) {
            System.out.println("\nProduct found at index " + index);
            products[index].printDetails();
        } else {
            System.out.println("\nNo product available!");
        }
    }
}
