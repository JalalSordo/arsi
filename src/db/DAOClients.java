/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import bo.Client;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dikra Sordo
 */
public class DAOClients {

    private Connection connection;

    public DAOClients() {
        try {
            MySQLConnexion mysql_con = new MySQLConnexion();
            try {
                connection = mysql_con.getMySQLConnection();
            } catch (IOException ex) {
                Logger.getLogger(DAOClients.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public Object[][] getAllClients() throws SQLException {

        Statement st = connection.createStatement();
        ResultSet count = st.executeQuery("select count(*) from clients");
        count.next();
        Object[][] data = new Object[count.getInt(1)][4];
        ResultSet res = st.executeQuery("select * from clients");
        int i = 0;
        while (res.next()) {
            data[i][0] = res.getInt(1);
            data[i][1] = res.getString(2);
            data[i][2] = res.getString(3);
            data[i][3] = res.getString(4);
            i++;
        }
        return data;

    }

    public Client getClientByID(int id) throws SQLException {

        Statement st = connection.createStatement();

        Client client = new Client();
        ResultSet res = st.executeQuery("select * from clients where id=" + id);

        if (res.next()) {
            client.setId(res.getInt(1));
            client.setNom(res.getString(2));
            client.setAdresse(res.getString(3));
            client.setVille(res.getString(4));
            client.setPays(res.getString(5));
            client.setTelephone(res.getString(6));
            client.setFax(res.getString(7));
            client.setEmail(res.getString(8));
            client.setSiteweb(res.getString(9));

        }
        return client;

    }
//Supprimer

    public void deleteClient(int id) throws SQLException {
        System.out.println("delete Client with id = " + id);
        Statement st = connection.createStatement();
        st.executeUpdate("delete from clients where id=" + id);

        System.out.println("--->success!");
    }
    //insert clients(client)

    public void addClient(Client aClient) throws SQLException {
        System.out.println("add Client with id = " + aClient.getId());
        Statement st = connection.createStatement();

        st.executeUpdate("insert into clients values(null,"
                + "'" + aClient.getNom() + "',"
                + "'" + aClient.getVille() + "',"
                + "'" + aClient.getAdresse() + "',"
                + "'" + aClient.getTelephone() + "',"
                + "'" + aClient.getFax() + "',"
                + "'" + aClient.getEmail() + "',"
                + "'" + aClient.getSiteWeb() + "',"
                + "'" + aClient.getPays() + "'"
                + ")");

        System.out.println("--->success!");
    }

    //modifier
    public void updateClient(Client aClient) throws SQLException {
        System.out.println("update Client with id = " + aClient.getId());
        Statement st = connection.createStatement();

        st.executeUpdate("update clients set "
                + "nom='" + aClient.getNom() + "',"
                + "Adresse='" + aClient.getAdresse() + "',"
                + "Ville='" + aClient.getVille() + "',"
                + "Pays='" + aClient.getPays() + "',"
                + "Telephone='" + aClient.getTelephone() + "',"
                + "Fax='" + aClient.getFax() + "',"
                + "Email='" + aClient.getEmail() + "',"
                + "Site_web='" + aClient.getSiteWeb() + "'"
                + " where id=" + aClient.getId());

        System.out.println("--->success!");
    }

    public static void main(String[] args) {
        try {
            DAOClients dao = new DAOClients();
            System.out.println(dao.getClientByID(1));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    //SQL : delete from clients where id=1
    public Object[][] findClientByNom(String nom_search) throws SQLException {

        Statement st = connection.createStatement();
        ResultSet count = st.executeQuery("select count(*) from clients where nom like '%"+nom_search+"%'");
        count.next();
        Object[][] data = new Object[count.getInt(1)][4];
        ResultSet res = st.executeQuery("select * from clients where nom like '%"+nom_search+"%'");
        int i = 0;
        while (res.next()) {
            data[i][0] = res.getInt(1);
            data[i][1] = res.getString(2);
            data[i][2] = res.getString(3);
            data[i][3] = res.getString(4);
            i++;
        }
        return data;

    }

}
