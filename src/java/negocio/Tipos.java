package negocio;

import accesodato.Coneccion;

public class Tipos {
    private int tipo_id;
    private String nombre;
    private String estado;
    private int Habilidad;
    Coneccion con;
    
    public Tipos(){
        con=new Coneccion();
    }

    public int getTipo_id() {
        return tipo_id;
    }

    public void setTipo_id(int tipo_id) {
        this.tipo_id = tipo_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getHabilidad() {
        return Habilidad;
    }

    public void setHabilidad(int Habilidad) {
        this.Habilidad = Habilidad;
    }

     public void GuardarTipos(){
    
    con.setInsertar("insert into Tipos(nombre,habilidad_id,estado) values('"+this.getNombre()+"','"+this.getHabilidad()+"','activo')");
    }
    
    public void BorrarTipos(){
    con.setInsertar("update tipos  set estado='pasivo' where tipo_id='"+this.getTipo_id() +"'");
    
    }
    
    public void ActualizarTipos(){
            
    con.setInsertar("UPDATE tipos SET nombre='"+this.getNombre()+"',habilidad_id='"+this.getHabilidad()+"',estado= 'activo' where tipo_id='"+this.getTipo_id() +"'");
 
            
    }
    
    
    
    
    
}