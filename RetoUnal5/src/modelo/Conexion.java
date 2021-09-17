/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Felipe
 */
public class Conexion //This class was made in order to stablish a connection between the data base and the controller
{

    Connection con = null;

    public Connection conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); //This method instance will allow the program to use the connector
            con = DriverManager.getConnection("jdbc:mysql://localhost/db_reto4", "root", "");

            JOptionPane.showMessageDialog(null, "The connection with the database was made");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Connection errror: " + e.getMessage());
        }

        return con;
    }

}
