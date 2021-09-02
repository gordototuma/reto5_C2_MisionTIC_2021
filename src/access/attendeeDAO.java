/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package access;

/**
 *
 * @author Luis
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JOptionPane;

import java.util.ArrayList;
import model.attendeeModel;
import utils.ConnectionDB;


public class attendeeDAO {
    
    private Connection conn = null;
    
    //CREAR ASISTENTE
    public void insertAttendee(attendeeModel attendee){
        try {
            if(conn == null)
                conn = ConnectionDB.getConnection();
            
            String sql = "INSERT INTO `asistente` (`asi_login`, `asi_nombre`, `asi_apellido`, `asi_email`, `asi_celular`, "
                    + "`asi_clave`, `asi_fecha_nto`) VALUES (?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, attendee.getAsi_login());
            statement.setString(2, attendee.getAsi_nombre());
            statement.setString(3, attendee.getAsi_apellido());
            statement.setString(4, attendee.getAsi_email());
            statement.setLong(5, attendee.getAsi_celular());
            statement.setString(6, attendee.getAsi_clave());
            statement.setString(7, attendee.getAsi_fecha_nto());
            
            int rowsInserted = statement.executeUpdate();
            if(rowsInserted > 0) 
                JOptionPane.showMessageDialog(null, "El registro fue agregado exitosamente !");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() 
                                        + "\nError :" + ex.getMessage());
        }
    }
    
    //COLSUTA GENERAL DE TODOS LOS ASISTENTES A LAS OBRAS
    public ArrayList<attendeeModel> getAllAttendees() {
        ArrayList<attendeeModel> allAttendee = new ArrayList();
        try {
            if(conn == null)
                conn = ConnectionDB.getConnection();
            
            String sql = "SELECT asi_login, asi_nombre, asi_apellido, asi_email, asi_celular, asi_fecha_nto FROM asistente;";
            Statement statement = conn.createStatement();
            ResultSet result    = statement.executeQuery(sql);
            
            while (result.next()) {
                attendeeModel attendee = new attendeeModel(result.getString(1), result.getString(2), result.getString(3), result.getString(4),
                        result.getLong(5),null,result.getString(6));               
                allAttendee.add( attendee );
            }
        } 
        catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() 
                                        + "\nError :" + ex.getMessage());
        }        
        return allAttendee;
    }
    
    
    public ArrayList<attendeeModel> getAllAttendeesbyAlias(String alias) {
        ArrayList<attendeeModel> allAttendee = new ArrayList();
        try {
            if(conn == null)
                conn = ConnectionDB.getConnection();
            
            String sql = "SELECT asi_login, asi_nombre, asi_apellido, asi_email, asi_celular, asi_fecha_nto FROM asistente WHERE asi_login=?;";                                   
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, alias);
            ResultSet result = statement.executeQuery();
            
            while (result.next()) {
                attendeeModel attendee = new attendeeModel(result.getString(1), result.getString(2), result.getString(3), result.getString(4),
                        result.getLong(5),null,result.getString(6));               
                allAttendee.add( attendee );
            }
        } 
        catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() 
                                        + "\nError :" + ex.getMessage());
        }        
        return allAttendee;
    }
    
    
//OBRAS VISITADAS POR ALIAS    
    public ArrayList<attendeeModel> getObrasAsistidasbyAlias(String alias) {
        ArrayList<attendeeModel> obrasvisitadas = new ArrayList();
        try {
            if(conn == null)
                conn = ConnectionDB.getConnection();
            
            String sql = "select obra.ob_titulo from obra, obraasistida where obraasistida.oa_user = ? and obraasistida.oa_obra=obra.ob_id ORDER BY obra.ob_titulo ASC;";                                   
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, alias);
            ResultSet result = statement.executeQuery();
            
            while (result.next()) {
                attendeeModel visitas_attendee = new attendeeModel(result.getString(1));               
                obrasvisitadas.add( visitas_attendee );
            }
        } 
        catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() 
                                        + "\nError :" + ex.getMessage());
        }        
        return obrasvisitadas;
    }
    
    
    //ACTUALIZACIÓN ASISTENTE
    public int updateAttendee(attendeeModel attendee) {
        try {
            if(conn == null)
                conn = ConnectionDB.getConnection();
            
            String sql = "UPDATE asistente SET asi_nombre=?,asi_apellido=?,asi_email=?,asi_celular=?,asi_fecha_nto=?"
                    + " WHERE asi_login=?;";                        
            PreparedStatement statement = conn.prepareStatement(sql);            
            statement.setString(1, attendee.getAsi_nombre());
            statement.setString(2, attendee.getAsi_apellido());
            statement.setString(3, attendee.getAsi_email());
            statement.setLong(4, attendee.getAsi_celular());
            statement.setString(5, attendee.getAsi_fecha_nto());
            statement.setString(6, attendee.getAsi_login());
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0){
                return 0;
            }else{
                return 1;
            }            
               
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : " + ex.getErrorCode() 
                                        + "\nError :" + ex.getMessage());
            return 2;
        }
    }
    
    //ELIMINACION ASISTENTE
    public int deleteAttendee(String Asi_login) {
        try {
            if(conn == null)
                conn = ConnectionDB.getConnection();
            
            String sql = "DELETE FROM asistente WHERE asi_login=?;";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, Asi_login);
            int rowsDeleted = statement.executeUpdate();
            if (rowsDeleted > 0) {
                return 0;
            }else{
                return 1;
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Código : "
                    + ex.getErrorCode() + "\nError :" + ex.getMessage());
            return 1;
        }
    }
    
    
}
