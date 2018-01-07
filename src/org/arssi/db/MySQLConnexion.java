
//
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
package org.arssi.db;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Dikra Sordo
 */
public class MySQLConnexion {

    public MySQLConnexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
        }
        
    }

    public Connection getMySQLConnection() throws SQLException, IOException {
       // ServerSocket server= new ServerSocket(3333);
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/gest_clients", "root", "root");
    }

    public static void main(String[] args) {
        testDB();
    }

    private static void testDB() {
        try {
            System.out.println("showing all clients");
          
            MySQLConnexion mysql_con = new MySQLConnexion();
            System.out.println("----1");
            Connection con = mysql_con.getMySQLConnection();
            System.out.println("----2");
            Statement s = con.createStatement();
            System.out.println("----3");
            ResultSet res = s.executeQuery("select * from clients");
            while (res.next()) {
                System.out.println(res.getInt(1) + " " + res.getString(2));
            }

        } catch (SQLException | IOException ex) {
        	ex.printStackTrace();
        }
    }
}
