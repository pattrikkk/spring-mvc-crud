package sk.ukf.mymvc.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sk.ukf.mymvc.entity.Vehicle;

@Repository
public class VehicleDAOImpl implements VehicleDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Vehicle> getVehicles() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Vehicle> query = currentSession.createQuery("from Vehicle order by id", Vehicle.class);
		List<Vehicle> vehicles = query.getResultList();
		return vehicles;
	}
	@Override
	public void saveVehicle(Vehicle vehicle) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(vehicle);
	}
	
	@Override
	public List<Vehicle> searchVehicles(String searchQuery) {
	    Session currentSession = sessionFactory.getCurrentSession();
	    Query<Vehicle> query = currentSession.createQuery("from Vehicle where lower(majitel) like :searchQuery or lower(znacka) like :searchQuery or lower(model) like :searchQuery or lower(karoseria) like :searchQuery or lower(typ_paliva) like :searchQuery or lower(prevodovka) like :searchQuery", Vehicle.class);
	    query.setParameter("searchQuery", "%" + searchQuery.toLowerCase() + "%");
	    List<Vehicle> vehicles = query.getResultList();
	    return vehicles;
	}

	@Override
	public Vehicle getVehicle(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Vehicle vehicle = currentSession.get(Vehicle.class, id);
		return vehicle;
	}
	
	@Override
	public void deleteVehicle(int id) {
		System.out.println("delete");
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from Vehicle where id=:vehicleId");
		theQuery.setParameter("vehicleId", id);
		theQuery.executeUpdate();
	}

}
