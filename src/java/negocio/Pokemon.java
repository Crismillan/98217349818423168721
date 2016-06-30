package negocio;

import accesodato.Coneccion;

public class Pokemon {

    private int pokemon_id;
    private String nombre;
    private String fecha_nacimiento;
    private int numero;
    private int tipo_id;
    private String Estado;
    private int creado_por;
    private int ciudad_id;

    Coneccion con;

    public Pokemon() {
        con = new Coneccion();
    }

    public int getPokemon_id() {
        return pokemon_id;
    }

    public void setPokemon_id(int pokemon_id) {
        this.pokemon_id = pokemon_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getTipo_id() {
        return tipo_id;
    }

    public void setTipo_id(int tipo_id) {
        this.tipo_id = tipo_id;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public int getCreado_por() {
        return creado_por;
    }

    public void setCreado_por(int creado_por) {
        this.creado_por = creado_por;
    }

    public int getCiudad_id() {
        return ciudad_id;
    }

    
    public void save(){
        con.setInsertar("insert into Pokemones(nombre,fecha_nacimiento,numero,tipo_id,estado,creado_por,ciudad_id) values('"+this.getNombre()+"','"+this.getFecha_nacimiento()+"','"+this.getNumero()+"','"+this.getTipo_id()+"','activo','"+this.getCreado_por()+"','"+this.getCiudad_id()+"')");
    }
        public void setCiudad_id(int ciudad_id){
            this.ciudad_id=ciudad_id;
            }
    
    public void BorrarPokemon(){
    con.setInsertar("update pokemones  set estado='pasivo' where pokemon_id='"+this.getPokemon_id() +"'");
    
    }
    
    public void ActualizarPokemon(){
    con.setInsertar("update pokemones set nombre='"+this.getNombre() +"',set fecha_nacimiento='"+this.getFecha_nacimiento() + "',set numero'"+this.getNumero() +"',set tipo_id'"+this.getTipo_id()+"' ,set estado='pasivo',set creado_por='"+this.getCreado_por() +"',set ciudad_id='"+this.getCiudad_id()+"' where pokemon_id='"+this.getPokemon_id() +"' ");
    
    }
    
}
