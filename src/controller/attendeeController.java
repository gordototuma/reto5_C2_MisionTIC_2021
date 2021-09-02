/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import access.attendeeDAO;
import java.util.ArrayList;
import java.util.Random;
import model.attendeeModel;

/**
 *
 * @author Luis
 */
public class attendeeController {
    
       
    private String password(){
        //Genera Clave
        int leftLimit = 48; // numeral '0'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
        Random random = new Random();

        String generatedString = random.ints(leftLimit, rightLimit + 1)
          .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
          .limit(targetStringLength)
          .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
          .toString();
        
        return generatedString;
    }
    
    public int add(String asi_login, String asi_nombre, String asi_apellido, String asi_email, 
            long asi_celular, String asi_fecha_nto){
        
        String asi_clave = password();
        
        attendeeModel attendee = new attendeeModel(asi_login, asi_nombre, asi_apellido, asi_email, 
            asi_celular, asi_clave, asi_fecha_nto);
        
        
        attendeeDAO attendeeDAO = new attendeeDAO();
        attendeeDAO.insertAttendee(attendee);
        
        return 0;
    }
    
    public ArrayList<attendeeModel> readAttendees(){
        ArrayList<attendeeModel> attendees = new ArrayList();
        attendeeDAO readAttendeesDAO = new attendeeDAO();
        attendees = readAttendeesDAO.getAllAttendees();       
        
        return attendees;        
    }
    
    public ArrayList<attendeeModel> readAttendeesbyAlias(String alias){
        ArrayList<attendeeModel> attendee = new ArrayList();
        attendeeDAO readAttendeesDAO = new attendeeDAO();
        attendee = readAttendeesDAO.getAllAttendeesbyAlias(alias);       
        
        return attendee;        
    }
    
    public ArrayList<attendeeModel> getObrasAsistidasbyAlias(String alias){
        ArrayList<attendeeModel> asistencias_attendee = new ArrayList();
        attendeeDAO asistenciasAttendeesDAO = new attendeeDAO();
        asistencias_attendee = asistenciasAttendeesDAO.getObrasAsistidasbyAlias(alias);       
        
        return asistencias_attendee;        
    }
    
    
    //Eliminar asistente
    
    public int delete(String asi_login){        
        attendeeDAO attendeeDAO = new attendeeDAO();      
        return attendeeDAO.deleteAttendee(asi_login);
    }
    
    
    //Actualizar Asistente
    public int update(String asi_login, String asi_nombre, String asi_apellido, String asi_email, 
            long asi_celular, String asi_fecha_nto){        
        
        attendeeDAO updateAttendeeDAO = new attendeeDAO();
        attendeeModel UpdateAttendeeModel = new attendeeModel(asi_login, asi_nombre, asi_apellido, asi_email, 
            asi_celular, null,asi_fecha_nto);
        
        return updateAttendeeDAO.updateAttendee(UpdateAttendeeModel);
    }
    
}
