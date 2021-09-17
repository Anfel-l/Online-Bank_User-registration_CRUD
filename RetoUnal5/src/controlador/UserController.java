/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import modelo.Conexion;

/**
 *
 * @author Felipe
 */
public class UserController extends javax.swing.JFrame {

    //Here goes an instance of the SQL database connection
    Conexion cc = new Conexion();
    Connection con = cc.conexion();

    public UserController() //Empty constructor
    {

    }

    public void insertData(JTextField txtAlias, JTextField txtName, JTextField txtLastname, JTextField txtEmail, JTextField txtCellphone, JTextField txtPassword, JTextField txtDate) {
        try {
            //With the next code lines, the program will be able to crete a SQL query and send it to the connection type object
            String SQL = "INSERT INTO usuario (usr_alias, usr_nombres, usr_apellidos, usr_email, usr_celular, usr_clave, usr_fecha_nto) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(SQL); //Sending query to database
            pst.setString(1, txtAlias.getText());
            pst.setString(2, txtName.getText());
            pst.setString(3, txtLastname.getText());
            pst.setString(4, txtEmail.getText());
            pst.setString(5, txtCellphone.getText());
            pst.setString(6, txtPassword.getText());
            pst.setString(7, txtDate.getText());

            pst.execute(); //Executing the SQL sentence

            JOptionPane.showMessageDialog(null, "Succesful register");

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Register error: " + e.getMessage());
        }
    }

    //Adding new data
    public void newData(JTextField txtAlias, JTextField txtName, JTextField txtLastname, JTextField txtEmail, JTextField txtCellphone, JTextField txtPassword, JTextField txtDate) {
        //This is an additional method which allows you to clean all the fields in the text area

        txtAlias.setText("");
        txtName.setText("");
        txtLastname.setText("");
        txtEmail.setText("");
        txtCellphone.setText("");
        txtPassword.setText("");
        txtDate.setText("");
    }

    //Showing data in the table
    public void showData(JTable tableUsers) {
        //Configuration model for the colums of the table
        String[] titles = {"Alias", "Name", "Last Name", "Email", "Cellphone", "Password", "Birth Date"};

        //Configuration model for the rows of the table
        String[] registry = new String[7];

        DefaultTableModel model = new DefaultTableModel(null, titles);

        String SQL = "SELECT * FROM usuario";

        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(SQL);
            while (rs.next()) {
                registry[0] = rs.getString("usr_alias");
                registry[1] = rs.getString("usr_nombres");
                registry[2] = rs.getString("usr_apellidos");
                registry[3] = rs.getString("usr_email");
                registry[4] = rs.getString("usr_celular");
                registry[5] = rs.getString("usr_clave");
                registry[6] = rs.getString("usr_fecha_nto");

                model.addRow(registry);
            }

            tableUsers.setModel(model);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }

    //This method allows you to update the selected field of the JFrame table
    //which it is originated from a function who listens to a click from the user
    public void updateData(JTable tableUsers, JTextField txtAlias, JTextField txtName, JTextField txtLastname, JTextField txtEmail, JTextField txtCellphone, JTextField txtPassword, JTextField txtDate) {
        try {
            //With the next code lines, the program will be able to crete a SQL query and send it to the connection type object
            String SQL = "UPDATE usuario SET usr_alias=?, usr_nombres=?, usr_apellidos=?, usr_email=?, usr_celular=?, usr_clave=?, usr_fecha_nto=?"
                    + "WHERE usr_alias=?";

            int selectedRow = tableUsers.getSelectedRow();
            String dataUpdate = (String) tableUsers.getValueAt(selectedRow, 0);

            PreparedStatement pst = con.prepareStatement(SQL); //Sending query to database
            pst.setString(1, txtAlias.getText());
            pst.setString(2, txtName.getText());
            pst.setString(3, txtLastname.getText());
            pst.setString(4, txtEmail.getText());
            pst.setString(5, txtCellphone.getText());
            pst.setString(6, txtPassword.getText());
            pst.setString(7, txtDate.getText());

            pst.setString(8, dataUpdate);
            pst.execute();

            JOptionPane.showMessageDialog(null, "The registry was updated succesfully");

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Update error: " + e.getMessage());
        }
    }

    //This method allows you to delete the selected field of the JFrame table
    //which it is originated from a function who listens to a click from the user
    public void deleteData(JTable tableUsers) {
        int selectedRow = tableUsers.getSelectedRow();

        try {
            String SQL = "DELETE from usuario WHERE usr_alias=" + "'" + tableUsers.getValueAt(selectedRow, 0) + "'";

            Statement st = con.createStatement();

            int execQuery = st.executeUpdate(SQL);

            if (execQuery >= 0) {
                JOptionPane.showMessageDialog(null, "The registry was deleted");

            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Deleting Error: " + e.getMessage());
        }

    }

}
