package edu.wctc.rest.secure.resthotelsecurespringapp.service;

import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerResponseContext;
import javax.ws.rs.container.ContainerResponseFilter;
import javax.ws.rs.ext.Provider;

/**
 * This class is needed when accessing web services from another app, or 
 * another domain. It's even needed when switching from HTTP to HTTPS URIs
 * in the same app because the change indicates a different server domain.
 */
@Provider
public class CrossOriginResourceSharingFilter implements ContainerResponseFilter {

    @Override
    public void filter(ContainerRequestContext requestContext, ContainerResponseContext response) {
        response.getHeaders().putSingle("Access-Control-Allow-Origin", "*");
        response.getHeaders().putSingle("Access-Control-Allow-Methods", "OPTIONS, GET, POST, PUT, PATCH, DELETE");
        response.getHeaders().putSingle("Access-Control-Max-Age", "3600");
        response.getHeaders().putSingle("Access-Control-Allow-Headers", "Content-Type");
    }
    
}
