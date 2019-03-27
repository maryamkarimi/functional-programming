import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class CustomerManager extends ArrayList<Customer> {

	// Return a new list containing only the customers that match the given predicate 
	public List<Customer> getCustomersBy(Predicate<Customer> predicate){
		return this.stream().filter(predicate).collect(Collectors.<Customer>toList());
	}

	// Return a new list containing only customers 65 or older 
	public List<Customer> getSeniors(){
		return getCustomersBy(p -> p.getAge() > 64);
	}

	// Return a new list containing only customers under 18 
	public List<Customer> getChildren(){
		return getCustomersBy(p -> p.getAge() < 18 );
	}

	// Return a new list containing only customers in the given country 
	public List<Customer> getCustomersFrom(String country){
		return getCustomersBy(p -> p.getCountry() == country);
	}

	// Return a new list containing only customers having a last name starting with the given prefix 
	public List<Customer> getCustomersByLastNamePrefix(String prefix){
		return getCustomersBy(p -> p.getLastName().startsWith(prefix));
	}
}