package edu.wctc.rest.secure.resthotelsecurespringapp.service;

import edu.wctc.rest.secure.resthotelsecurespringapp.entity.Hotel;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 *
 * @author jlombardo
 */
@Stateless
@Path("v1/hotels")
public class HotelFacadeREST extends AbstractFacade<Hotel> {
    @PersistenceContext(unitName = "edu.wctc.rest.secure_RestHotelSecureSpringApp_war_1.0-SNAPSHOTPU")
    private EntityManager em;

    public HotelFacadeREST() {
        super(Hotel.class);
    }

    @POST
    @Override
    @Consumes({"application/json"})
    public void create(Hotel entity) {
        super.create(entity);
    }

    /**
     * Updates a JPA entity. Note that you must set the id before passing
     * the entity to the edit method. Also note that we are using the HTTP
     * method 'PUT' here because 'PATCH' should only be used when doing a 
     * partial update. But that isn't possible with JPA because it needs all 
     * fields for a given entity to perform the edit.
     * 
     * @param id
     * @param entity 
     */
    @PUT
    @Path("{id}")
    @Consumes({"application/json"})
    public void edit(@PathParam("id") Integer id, Hotel entity) {
        entity.setHotelId(id);
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces({"application/json"})
    public Hotel find(@PathParam("id") Integer id) {
        return super.find(id);
    }

    @GET
    @Override
    @Produces({"application/json"})
    public List<Hotel> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({"application/json"})
    public List<Hotel> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces("text/plain")
    public String countREST() {
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
}
