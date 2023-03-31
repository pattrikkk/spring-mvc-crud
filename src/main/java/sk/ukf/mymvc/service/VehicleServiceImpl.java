package sk.ukf.mymvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sk.ukf.mymvc.dao.VehicleDAO;
import sk.ukf.mymvc.entity.Vehicle;

@Service
public class VehicleServiceImpl implements VehicleService {
	@Autowired
	private VehicleDAO vehicleDAO;
	@Transactional
	public List<Vehicle> getVehicles() {
		return vehicleDAO.getVehicles();
	}
	@Transactional
	public void saveVehicle(Vehicle vehicle) {
		vehicleDAO.saveVehicle(vehicle);
	}
	@Transactional
	public Vehicle getVehicle(int id) {
		return vehicleDAO.getVehicle(id);
	}
	@Transactional
	public void deleteVehicle(int id) {
		vehicleDAO.deleteVehicle(id);
	}
	@Transactional
	public List<Vehicle> searchVehicles(String searchQuery) {
	    return vehicleDAO.searchVehicles(searchQuery);
	}
}

