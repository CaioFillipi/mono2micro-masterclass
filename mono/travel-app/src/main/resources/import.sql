-- This file allow to write SQL commands that will be emitted in test and dev.
-- The commands are commented as their support depends of the database
-- insert into myentity (id, field) values(1, 'field-1');
-- insert into myentity (id, field) values(2, 'field-2');
-- insert into myentity (id, field) values(3, 'field-3');
-- alter sequence myentity_seq restart with 4;
create sequence travelorder_sequence start with 1 increment by 1;
INSERT INTO TravelOrder(id) VALUES (nextval('travelorder_sequence'));
INSERT INTO TravelOrder(id) VALUES (nextval('travelorder_sequence'));
INSERT INTO TravelOrder(id) VALUES (nextval('travelorder_sequence'));
INSERT INTO TravelOrder(id) VALUES (nextval('travelorder_sequence'));
INSERT INTO TravelOrder(id) VALUES (nextval('travelorder_sequence'));

create sequence flight_sequence start with 1 increment by 1;
INSERT INTO Flight(id,travelOrderId,fromAirport,toAirport) VALUES (nextval('flight_sequence'),1,'Guarulhos','Zumbi dos Palmares');
INSERT INTO Flight(id,travelOrderId,fromAirport,toAirport) VALUES (nextval('flight_sequence'),2,'Guarulhos','Poa');
INSERT INTO Flight(id,travelOrderId,fromAirport,toAirport) VALUES (nextval('flight_sequence'),3,'Guarulhos','Porto Seguro');
INSERT INTO Flight(id,travelOrderId,fromAirport,toAirport) VALUES (nextval('flight_sequence'),4,'Guarulhos','Atena');
INSERT INTO Flight(id,travelOrderId,fromAirport,toAirport) VALUES (nextval('flight_sequence'),5,'Guarulhos','Nova York');

create sequence hotel_sequence start with 1 increment by 1;
INSERT INTO Hotel(id,travelOrderId,nights) VALUES (nextval('hotel_sequence'),1,4);
INSERT INTO Hotel(id,travelOrderId,nights) VALUES (nextval('hotel_sequence'),2,3);
INSERT INTO Hotel(id,travelOrderId,nights) VALUES (nextval('hotel_sequence'),3,7);
INSERT INTO Hotel(id,travelOrderId,nights) VALUES (nextval('hotel_sequence'),4,6);
INSERT INTO Hotel(id,travelOrderId,nights) VALUES (nextval('hotel_sequence'),5,3);