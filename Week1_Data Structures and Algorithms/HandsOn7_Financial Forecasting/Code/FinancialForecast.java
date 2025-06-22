import java.util.Scanner;

public class FinancialForecast {

    // Recursive function to calculate and print value each year
    public static double forecastYearByYear(double initialValue, double rate, int year) {
        if (year == 0) {
            System.out.printf("Year %d: Rs%.2f\n", 0, initialValue);
            return initialValue;
        }

        double previousValue = forecastYearByYear(initialValue, rate, year - 1);
        double currentValue = previousValue * (1 + rate);
        System.out.printf("Year %d: Rs%.2f\n", year, currentValue);
        return currentValue;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Financial Forecast Tool (Recursive)\n");

        // Take user input
        System.out.print("Enter Initial Amount (in Rs): ");
        double initial = scanner.nextDouble();

        System.out.print("Enter Annual Growth Rate (%) : ");
        double ratePercent = scanner.nextDouble();

        System.out.print("Enter Number of Years: ");
        int years = scanner.nextInt();

        // Convert percent to decimal (e.g., 10% → 0.10)
        double rate = ratePercent / 100.0;

        System.out.println("\n--- Forecast ---");
        forecastYearByYear(initial, rate, years);

        scanner.close();
    }
}
