package TransportPackage;

import java.sql.Date;
import java.sql.Time;

public class TransportModel {
    private int transport_id;
    private String event_type;
    private String event_type_other;
    private String reservation_type;
    private String reservation_type_other;
    private String distance_range;
    private String distance_range_other;
    private String event_date;
    private String pickup_location;
    private String drop_location;
    private String contact_person;
    private String contact_number;
    private String vehicle_type;
    private String vehicle_type_other;
    private String route_name;
    private String schedule_time; // Using Time instead of String for better handling
    private String capacity;
    private String driver_name;
    private String driver_name_other;
    private String status;
    private String status_other;
    private String notes;

    // Constructor to initialize all fields
    public TransportModel(int transport_id, String event_type, String event_type_other, String reservation_type, 
            String reservation_type_other, String distance_range, String distance_range_other, String event_date, 
            String pickup_location, String drop_location, String contact_person, String contact_number, 
            String vehicle_type, String vehicle_type_other, String route_name, String schedule_time, String capacity, 
            String driver_name, String driver_name_other, String status, String status_other, String notes) {
        this.transport_id = transport_id;
        this.event_type = event_type;
        this.event_type_other = event_type_other;
        this.reservation_type = reservation_type;
        this.reservation_type_other = reservation_type_other;
        this.distance_range = distance_range;
        this.distance_range_other = distance_range_other;
        this.event_date = event_date;
        this.pickup_location = pickup_location;
        this.drop_location = drop_location;
        this.contact_person = contact_person;
        this.contact_number = contact_number;
        this.vehicle_type = vehicle_type;
        this.vehicle_type_other = vehicle_type_other;
        this.route_name = route_name;
        this.schedule_time = schedule_time;
        this.capacity = capacity;
        this.driver_name = driver_name;
        this.driver_name_other = driver_name_other;
        this.status = status;
        this.status_other = status_other;
        this.notes = notes;
    }

    // Getters and Setters for all the fields

    public int getTransport_id() {
        return transport_id;
    }

    public void setTransport_id(int transport_id) {
        this.transport_id = transport_id;
    }

    public String getEvent_type() {
        return event_type;
    }

    public void setEvent_type(String event_type) {
        this.event_type = event_type;
    }

    public String getEvent_type_other() {
        return event_type_other;
    }

    public void setEvent_type_other(String event_type_other) {
        this.event_type_other = event_type_other;
    }

    public String getReservation_type() {
        return reservation_type;
    }

    public void setReservation_type(String reservation_type) {
        this.reservation_type = reservation_type;
    }

    public String getReservation_type_other() {
        return reservation_type_other;
    }

    public void setReservation_type_other(String reservation_type_other) {
        this.reservation_type_other = reservation_type_other;
    }

    public String getDistance_range() {
        return distance_range;
    }

    public void setDistance_range(String distance_range) {
        this.distance_range = distance_range;
    }

    public String getDistance_range_other() {
        return distance_range_other;
    }

    public void setDistance_range_other(String distance_range_other) {
        this.distance_range_other = distance_range_other;
    }

    public String getEvent_date() {
        return event_date;
    }

    public void setEvent_date(String event_date) {
        this.event_date = event_date;
    }

    public String getPickup_location() {
        return pickup_location;
    }

    public void setPickup_location(String pickup_location) {
        this.pickup_location = pickup_location;
    }

    public String getDrop_location() {
        return drop_location;
    }

    public void setDrop_location(String drop_location) {
        this.drop_location = drop_location;
    }

    public String getContact_person() {
        return contact_person;
    }

    public void setContact_person(String contact_person) {
        this.contact_person = contact_person;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    public String getVehicle_type() {
        return vehicle_type;
    }

    public void setVehicle_type(String vehicle_type) {
        this.vehicle_type = vehicle_type;
    }

    public String getVehicle_type_other() {
        return vehicle_type_other;
    }

    public void setVehicle_type_other(String vehicle_type_other) {
        this.vehicle_type_other = vehicle_type_other;
    }

    public String getRoute_name() {
        return route_name;
    }

    public void setRoute_name(String route_name) {
        this.route_name = route_name;
    }

    public String getSchedule_time() {
        return schedule_time;
    }

    public void setSchedule_time(String schedule_time) {
        this.schedule_time = schedule_time;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getDriver_name() {
        return driver_name;
    }

    public void setDriver_name(String driver_name) {
        this.driver_name = driver_name;
    }

    public String getDriver_name_other() {
        return driver_name_other;
    }

    public void setDriver_name_other(String driver_name_other) {
        this.driver_name_other = driver_name_other;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus_other() {
        return status_other;
    }

    public void setStatus_other(String status_other) {
        this.status_other = status_other;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
