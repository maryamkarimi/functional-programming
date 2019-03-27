import java.util.Arrays;
import java.util.List;

public class CustomerTest {

  private static final String LINE =
    "========================================" +
    "====================";

  private static void printList(List<Customer> customers) {
    for (Customer c : customers) {
      System.out.println(c.toString());
    }
  }

  private static void addTestData(CustomerManager mgr) {
  
    mgr.addAll(Arrays.asList(
      new Customer("0001", "Irvin",    "Bartell",    17, "Gabon"),
      new Customer("0002", "Yuk",      "Leffler",    21, "Norway"),
      new Customer("0003", "Keena",    "Nolan",      75, "Venezuela"),
      new Customer("0004", "James",    "Torphy",     29, "Haiti"),
      new Customer("0005", "Dennis",   "Anderson",   26, "Canada"),
      new Customer("0006", "Renda",    "Schuppe",    64, "Spain"),
      new Customer("0007", "Jannie",   "Powlowski",  43, "Moldova"),
      new Customer("0008", "Oma",      "Krajcik",    13, "Solomon Islands"),
      new Customer("0009", "Maurine",  "Balistreri", 68, "Singapore"),
      new Customer("0010", "Brittny",  "Conn",       86, "Tajikistan"),
      new Customer("0011", "Rosario",  "Glover",     59, "Palau"),
      new Customer("0012", "Nichelle", "Dach",       56, "Chad"),
      new Customer("0013", "Gayla",    "Larson",     55, "Greenland"),
      new Customer("0014", "Cecelia",  "Krajcik",    63, "Aruba"),
      new Customer("0015", "Eliseo",   "Dicki",      84, "San Marino"),
      new Customer("0016", "Andera",   "Medhurst",   18, "Canada"),
      new Customer("0017", "Rickie",   "Marquardt",  76, "Timor-Leste"),
      new Customer("0018", "Joey",     "Wisozk",     59, "Jordan"),
      new Customer("0019", "Zack",     "Jacobi",     55, "Panama"),
      new Customer("0020", "Wayne",    "Labadie",    48, "Namibia"),
      new Customer("0021", "Shawanda", "Quigley",    47, "Lebanon"),
      new Customer("0022", "Tommy",    "Thompson",   76, "Armenia"),
      new Customer("0023", "Phil",     "Lowe",       46, "Belize"),
      new Customer("0024", "Saundra",  "Backus",     60, "Tunisia"),
      new Customer("0025", "Roxie",    "Skiles",     69, "Nepal")
    ));

  }

  public static void main(String[] args) {
    CustomerManager mgr = new CustomerManager();
    addTestData(mgr);

    System.out.println("All customers");
    System.out.println(LINE);
    printList(mgr);

    System.out.println("\nAll seniors");
    System.out.println(LINE);
    printList(mgr.getSeniors());

    System.out.println("\nAll children");
    System.out.println(LINE);
    printList(mgr.getChildren());

    System.out.println("\nCustomers from Canada");
    System.out.println(LINE);
    printList(mgr.getCustomersFrom("Canada"));

    System.out.println("\nCustomers with last names starting with 'Ba'");
    System.out.println(LINE);
    printList(mgr.getCustomersByLastNamePrefix("Ba"));
  }

}
