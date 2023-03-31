package sk.ukf.mymvc.dao;

import java.util.List;

import sk.ukf.mymvc.entity.Vehicle;

public interface VehicleDAO {
	public List<Vehicle> getVehicles();
	public void saveVehicle(Vehicle vehicle);
	public Vehicle getVehicle(int id);
	public void deleteVehicle(int id);
	List<Vehicle> searchVehicles(String searchQuery);
}
