public class Customer {

  private String id;
  private String firstName;
  private String lastName;
  private int age;
  private String country;

  public Customer(String id, String firstName, String lastName, int age,
                  String country) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    this.country = country;
  }

  public String getId() {
    return this.id;
  }

  public String getFirstName() {
    return this.firstName;
  }

  public String getLastName() {
    return this.lastName;
  }

  public int getAge() {
    return this.age;
  }

  public String getCountry() {
    return this.country;
  }

  public String toString() {
    return String.format("[%-6s %-10s %-10s %-3d %s]", 
        this.getId(),
        this.getFirstName(),
        this.getLastName(),
        this.getAge(),
        this.getCountry());
  }
}
