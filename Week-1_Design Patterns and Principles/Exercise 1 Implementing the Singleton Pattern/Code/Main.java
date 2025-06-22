public class Main {
    public static void main(String[] args) {

        // Getting two instances from different places
        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();

        // Log a message using logger1
        logger1.log("This is the first log message.");

        // Log another message using logger2
        logger2.log("This is the second log message.");

        // Check if both instances are the same
        if (logger1 == logger2) {
            System.out.println("Both logger1 and logger2 refer to the same instance.");
        } else {
            System.out.println("Different instances exist! Singleton failed.");
        }
    }
}
