import java.util.Scanner;
import java.sql.*; 
import oracle.jdbc.*;
import java.math.*;
import java.io.*;
import java.awt.*;
import oracle.jdbc.pool.OracleDataSource;

public class JDBC { 
	public static void main(String[] args) throws SQLException{
		try{
		OracleDataSource ds = new oracle.jdbc.pool.OracleDataSource();
        ds.setURL("jdbc:oracle:thin:@castor.cc.binghamton.edu:1521:ACAD111"); 
        Connection conn = ds.getConnection("xxin1", "123456");
		while (true){
			System.out.println("Choose from:\n1. add a purchase; 2. add a product; 3.show tables; other_num. quit ");
			Scanner in = new Scanner(System.in);
			int num = in.nextInt();
			if (num == 1 ) {
				CallableStatement cs = conn.prepareCall("begin add_purchase(:1,:2,:3,:4); end;");

      			System.out.print("Please enter eid:");
      			in = new Scanner(System.in);
      			String eid=in.nextLine();
      			System.out.print("Please enter pid:");
      			String pid=in.nextLine();
      			System.out.print("Please enter cid:");
      			String cid=in.nextLine();
      			System.out.print("Please enter qty:");
      			int qty = in.nextInt();
      			
      			cs.setString(1, eid);
      			cs.setString(2, pid);
      			cs.setString(3, pid);
      			cs.setInt(4, qty);

      			cs.executeQuery();

      			//close the result set, statement, and the connection
        		cs.close();
			}
			else if (num ==2) {
				CallableStatement cs = conn.prepareCall("begin add_products(:1,:2,:3,:4,:5,:6); end;");

      			System.out.print("Please enter pid:");
      			in = new Scanner(System.in);
      			String pid=in.nextLine();
      			System.out.print("Please enter pname:");
      			String pname=in.nextLine();
      			System.out.print("Please enter qoh:");
      			int qoh=in.nextInt();
      			System.out.print("Please enter qoh_threshold:");
      			int qoh_threshold = in.nextInt();
      			System.out.print("Please enter original_price:");
      			double original_price = in.nextDouble();
      			System.out.print("Please enter discnt_rate:");
      			double discnt_rate = in.nextDouble();
      			
      			cs.setString(1, pid);
      			cs.setString(2, pname);
      			cs.setInt(3, qoh);
      			cs.setInt(4, qoh_threshold);
      			cs.setDouble(5, original_price);
      			cs.setDouble(6, discnt_rate);

      			cs.executeQuery();

      			//close the result set, statement, and the connection
        		cs.close();

			}
			if (num == 3) {
        System.out.print("choose table to show: 1. employees; 2. customers; 3. products; \n4. purchases; 5. suppliers; 6. supply; \n");
        int table_num = in.nextInt();
        if (table_num==1) {
          //Prepare to call stored procedure:
          CallableStatement cs = conn.prepareCall("begin ? := refcursor_jdbc.showemployees(); end;");
          //register the out parameter (the first parameter)
          cs.registerOutParameter(1, OracleTypes.CURSOR);
          
          // execute and retrieve the result set
          cs.execute();
          ResultSet rs = (ResultSet)cs.getObject(1);

          // print the results
          while (rs.next()) {
              System.out.println(rs.getString(1) + "\t" +
                  rs.getString(2) + "\t" + rs.getString(3));
          }

          //close the result set, statement, and the connection
          cs.close();
          
        }
        else if (table_num==2) {
          //Prepare to call stored procedure:
          CallableStatement cs = conn.prepareCall("begin ? := refcursor_jdbc.showcustomers(); end;");
          //register the out parameter (the first parameter)
          cs.registerOutParameter(1, OracleTypes.CURSOR);
          
          // execute and retrieve the result set
          cs.execute();
          ResultSet rs = (ResultSet)cs.getObject(1);

          // print the results
          while (rs.next()) {
              System.out.println(rs.getString(1) + "\t" +
                  rs.getString(2) + "\t" + rs.getString(3)+ "\t" + rs.getString(4)+ "\t" + rs.getString(5));
          }

          //close the result set, statement, and the connection
          cs.close();
          
        }
        else if (table_num==3) {
          //Prepare to call stored procedure:
          CallableStatement cs = conn.prepareCall("begin ? := refcursor_jdbc.showproducts(); end;");
          //register the out parameter (the first parameter)
          cs.registerOutParameter(1, OracleTypes.CURSOR);
          
          // execute and retrieve the result set
          cs.execute();
          ResultSet rs = (ResultSet)cs.getObject(1);

          // print the results
          while (rs.next()) {
              System.out.println(rs.getString(1) + "\t" +
                  rs.getString(2) + "\t" + rs.getString(3)+ "\t" + rs.getString(4)+ "\t" + rs.getString(5)+ "\t" + rs.getString(6));
          }

          //close the result set, statement, and the connection
          cs.close();
          
        }
        else if (table_num==4) {
          //Prepare to call stored procedure:
          CallableStatement cs = conn.prepareCall("begin ? := refcursor_jdbc.showpurchases(); end;");
          //register the out parameter (the first parameter)
          cs.registerOutParameter(1, OracleTypes.CURSOR);
          
          // execute and retrieve the result set
          cs.execute();
          ResultSet rs = (ResultSet)cs.getObject(1);

          // print the results
          while (rs.next()) {
              System.out.println(rs.getString(1) + "\t" +
                  rs.getString(2) + "\t" + rs.getString(3)+ "\t" + rs.getString(4)+ "\t" + rs.getString(5)+ "\t" + rs.getString(6)+ "\t" + rs.getString(7));
          }

          //close the result set, statement, and the connection
          cs.close();
          
        }
        else if (table_num==5) {
          //Prepare to call stored procedure:
          CallableStatement cs = conn.prepareCall("begin ? := refcursor_jdbc.showsuppliers(); end;");
          //register the out parameter (the first parameter)
          cs.registerOutParameter(1, OracleTypes.CURSOR);
          
          // execute and retrieve the result set
          cs.execute();
          ResultSet rs = (ResultSet)cs.getObject(1);

          // print the results
          while (rs.next()) {
              System.out.println(rs.getString(1) + "\t" +
                  rs.getString(2) + "\t" + rs.getString(3)+ "\t" + rs.getString(4));
          }

          //close the result set, statement, and the connection
          cs.close();
          
        }
        else if (table_num==6) {
          //Prepare to call stored procedure:
          CallableStatement cs = conn.prepareCall("begin ? := refcursor_jdbc.showsupply(); end;");
          //register the out parameter (the first parameter)
          cs.registerOutParameter(1, OracleTypes.CURSOR);
          
          // execute and retrieve the result set
          cs.execute();
          ResultSet rs = (ResultSet)cs.getObject(1);

          // print the results
          while (rs.next()) {
              System.out.println(rs.getString(1) + "\t" +
                  rs.getString(2) + "\t" + rs.getString(3)+ "\t" + rs.getString(4)+ "\t" + rs.getString(5));
          }

          //close the result set, statement, and the connection
          cs.close();
          
        }
        else{System.out.print("No such choice;");}
			}
			else{
				System.out.println("Quit");
        conn.close();
        break;
			}
		}
		}
		catch (SQLException ex) { System.out.println ("\n*** SQLException caught ***\n");}
     	catch (Exception e) {System.out.println ("\n*** other Exception caught ***\n");}
	}
}
