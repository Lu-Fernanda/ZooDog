
package Facade;

import exception.ConexionException;
import genericdao.ServiceImpl;
import genericdao.SingletonConnection;
import javax.persistence.EntityManager;
import modelo.Comentarios;

public class FacadeComentarios extends ServiceImpl<Comentarios> {
    
     public FacadeComentarios() throws ConexionException {
        super(Comentarios.class);
        try{
            System.out.println("hola mundo");
             EntityManager em = SingletonConnection.getConnection();
            System.out.println("conexion!!");
            super.setEntityManager(em);
        }catch(Exception e){
            System.out.println(e.getMessage());
           throw new ConexionException("Problemas en la realizacion de conexion con la base de datos");
        }
    }
}
