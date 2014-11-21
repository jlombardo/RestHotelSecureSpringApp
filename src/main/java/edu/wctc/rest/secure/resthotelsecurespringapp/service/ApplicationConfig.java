package edu.wctc.rest.secure.resthotelsecurespringapp.service;

import java.util.Set;
import javax.ws.rs.core.Application;

/**
 * This class configures REST web services for this app.
 * Note that the CORS filter and Facade classes used for web services
 * must be explicityly added as resources (see 'addRestResourceClasses'
 * method below).
 */
@javax.ws.rs.ApplicationPath("api")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(edu.wctc.rest.secure.resthotelsecurespringapp.service.CrossOriginResourceSharingFilter.class);
        resources.add(edu.wctc.rest.secure.resthotelsecurespringapp.service.HotelFacadeREST.class);
    }
    
}
