package com.caiofillipi.hotel;

import jakarta.transaction.Transactional;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

import java.util.List;

@Path("hotel")
public class HotelResource {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Hotel> getAllHotels(){
        return Hotel.listAll();
    }

    @GET
    @Path("findById")
    @Produces(MediaType.APPLICATION_JSON)
    public Hotel getHotel(@QueryParam("id") Long id){
        return Hotel.findById(id);
    }

    @POST
    @Transactional
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Hotel createHotel(Hotel hotel){
        hotel.id = null;
        hotel.persist();
        return hotel;
    }
}
