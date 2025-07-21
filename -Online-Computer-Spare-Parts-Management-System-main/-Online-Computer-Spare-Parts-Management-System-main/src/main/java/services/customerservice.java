package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.part;
import utils.DBConnect;

public class customerservice implements ICustomerService {
    
	 // Insert data
    public void regcustomer(part cus) {
        try {
            // Updated SQL query to include new fields
            String query = "INSERT INTO customer (email, cpu, vcard, mem, mboard, cool, ssd) VALUES ('"
                    + cus.getEmail() + "', '"
                    + cus.getCpu() + "', '"
                    + cus.getVcard() + "', '"
                    + cus.getMem() + "', '"
                    + cus.getMboard() + "', '"
                    + cus.getCool() + "', '"
                    + cus.getSsd() + "')";
            
            Statement statement = DBConnect.getConnection().createStatement();
            statement.executeUpdate(query);
                    
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    // Display all customers
    public ArrayList<part> getAllCustomer(){
        ArrayList<part> listcus = new ArrayList<part>();
        try {
            String query = "SELECT * FROM customer";
            Statement statement = DBConnect.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(query);
            
            while(rs.next()) {
                part cus = new part();
                cus.setEmail(rs.getString("email"));
                cus.setCpu(rs.getString("cpu"));
                cus.setVcard(rs.getString("vcard"));
                cus.setMem(rs.getString("mem"));
                cus.setMboard(rs.getString("mboard"));
                cus.setCool(rs.getString("cool"));
                cus.setSsd(rs.getString("ssd"));
                
                listcus.add(cus);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listcus; // Moved outside the loop
    }

    // Update customer data
    public void updateCustomer(part customer) {
        try {
            String query = "UPDATE customer SET "
                + "cpu = '" + customer.getCpu() + "', "
                + "vcard = '" + customer.getVcard() + "', "
                + "mem = '" + customer.getMem() + "', "
                + "mboard = '" + customer.getMboard() + "', "
                + "cool = '" + customer.getCool() + "', "
                + "ssd = '" + customer.getSsd() + "' "
                + "WHERE email = '" + customer.getEmail() + "'";

            Statement statement = DBConnect.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Delete customer
    public void deleteCustomer(part cus) {
        try {
            String query = "DELETE FROM customer WHERE email = '" + cus.getEmail() + "'";
            Statement statement = DBConnect.getConnection().createStatement();
            statement.executeUpdate(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }   
}
