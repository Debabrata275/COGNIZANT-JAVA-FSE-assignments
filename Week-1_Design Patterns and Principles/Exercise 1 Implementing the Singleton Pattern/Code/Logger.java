public class Logger {

    // Step 2: Private static instance of the same class
    private static Logger instance;

    // Step 2: Private constructor to prevent external instantiation
    private Logger() {
        System.out.println("Logger instance created");
    }

    // Step 3: Public static method to get the single instance
    public static Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }

    // A sample logging method
    public void log(String message) {
        System.out.println("Log: " + message);
    }
}
