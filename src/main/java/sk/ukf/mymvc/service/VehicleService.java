package sk.ukf.mymvc.service;

import java.util.List;

import sk.ukf.mymvc.entity.Vehicle;

public interface VehicleService {

	List<Vehicle> getVehicles();

	void saveVehicle(Vehicle vehicle);

	Vehicle getVehicle(int id);

	void deleteVehicle(int id);
	
	List<Vehicle> searchVehicles(String searchQuery);

}
