package services;

import model.part;
import java.util.ArrayList;

public interface ICustomerService {
    void regcustomer(part cus);
    ArrayList<part> getAllCustomer();
    void updateCustomer(part cus);
    void deleteCustomer(part cus);
}
