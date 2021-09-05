package model;

public class attendeeModel {
    
    private String asi_login = "";
    private String asi_nombre = "";
    private String asi_apellido = "";
    private String asi_email = "";
    private long asi_celular = 0;
    private String asi_clave = "";
    private String asi_fecha_nto = "";
    private String obras_visitada = "";
    private String obras_visitada_fecha = "";
    
    
    public attendeeModel(String asi_login, String asi_nombre, String asi_apellido, String asi_email, 
            long asi_celular, String asi_clave, String asi_fecha_nto){
        
        this.asi_login = asi_login;
        this.asi_nombre = asi_nombre;
        this.asi_apellido = asi_apellido;
        this.asi_email = asi_email;
        this.asi_celular = asi_celular;
        this.asi_clave = asi_clave;
        this.asi_fecha_nto = asi_fecha_nto;       
    }
    
    
    public attendeeModel(String obras_visitada, String obras_visitada_fecha){
        this.obras_visitada = obras_visitada;
        this.obras_visitada_fecha = obras_visitada_fecha;
    }

    /**
     * @return the asi_login
     */
    public String getAsi_login() {
        return asi_login;
    }

    /**
     * @param asi_login the asi_login to set
     */
    public void setAsi_login(String asi_login) {
        this.asi_login = asi_login;
    }
    
    
    /**
     * @return the obras_visitada
     */
    public String getobras_visitada() {
        return obras_visitada;
    }

    /**
     * @param obras_visitada the obras_visitada to set
     */
    public void obras_visitada(String obras_visitada) {
        this.obras_visitada = obras_visitada;
    }

    /**
     * @return the asi_nombre
     */
    public String getAsi_nombre() {
        return asi_nombre;
    }

    /**
     * @param asi_nombre the asi_nombre to set
     */
    public void setAsi_nombre(String asi_nombre) {
        this.asi_nombre = asi_nombre;
    }

    /**
     * @return the asi_apellido
     */
    public String getAsi_apellido() {
        return asi_apellido;
    }

    /**
     * @param asi_apellido the asi_apellido to set
     */
    public void setAsi_apellido(String asi_apellido) {
        this.asi_apellido = asi_apellido;
    }

    /**
     * @return the asi_email
     */
    public String getAsi_email() {
        return asi_email;
    }

    /**
     * @param asi_email the asi_email to set
     */
    public void setAsi_email(String asi_email) {
        this.asi_email = asi_email;
    }

    /**
     * @return the asi_celular
     */
    public long getAsi_celular() {
        return asi_celular;
    }

    /**
     * @param asi_celular the asi_celular to set
     */
    public void setAsi_celular(int asi_celular) {
        this.asi_celular = asi_celular;
    }

    /**
     * @return the asi_clave
     */
    public String getAsi_clave() {
        return asi_clave;
    }

    /**
     * @param asi_clave the asi_clave to set
     */
    public void setAsi_clave(String asi_clave) {
        this.asi_clave = asi_clave;
    }

    /**
     * @return the asi_fecha_nto
     */
    public String getAsi_fecha_nto() {
        return asi_fecha_nto;
    }

    /**
     * @param asi_fecha_nto the asi_fecha_nto to set
     */
    public void setAsi_fecha_nto(String asi_fecha_nto) {
        this.asi_fecha_nto = asi_fecha_nto;
    }
    
    public Object[] toArray(){
        //arreglo de tipo objeto
        Object[] data = {asi_login, asi_nombre, asi_apellido, asi_email, asi_celular, asi_fecha_nto};
        return data;
    }
    
    public Object[] toArrayO(){
        //arreglo de tipo objeto
        Object[] data = {obras_visitada, obras_visitada_fecha};
        return data;
    }
    
    
    
    
    
    
}
