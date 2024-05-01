package com.caiofillipi.travelorder;

import jakarta.transaction.Transactional;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import org.jboss.logging.annotations.Pos;

import java.util.List;

@Path("travelorder")
public class TravelOrderResource {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<TravelOrder> getAllOrders(){
        return TravelOrder.listAll();
    }

    @GET
    @Path("findById")
    public TravelOrder getOrder(@QueryParam("id") Long id){
        return TravelOrder.findById(id);
    }

    @POST
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public TravelOrder createTravelOrder(TravelOrder order){
        order.id = null;
        order.persist();
        return order;
    }
}
