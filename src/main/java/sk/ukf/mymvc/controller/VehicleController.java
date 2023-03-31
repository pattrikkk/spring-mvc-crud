package sk.ukf.mymvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sk.ukf.mymvc.entity.Vehicle;
import sk.ukf.mymvc.service.VehicleService;

@Controller
@RequestMapping("/vehicle")
public class VehicleController {
	@Autowired
	private VehicleService vehicleService;
	@GetMapping("/list")
	public String listVehicles(Model model) {
		List<Vehicle> vehicles = vehicleService.getVehicles();
		model.addAttribute("vehicles", vehicles);
		return "list-vehicles";
	}
	
	@GetMapping("/searchVehicle")
	public String searchVehicle(@RequestParam("search") String searchQuery, Model model) {
	    List<Vehicle> vehicles = vehicleService.searchVehicles(searchQuery);
	    model.addAttribute("vehicles", vehicles);
	    return "list-vehicles";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Vehicle vehicle = new Vehicle();
		model.addAttribute("vehicle", vehicle);
		return "vehicle-form";
	}
	
	@PostMapping("/saveVehicle")
	public String saveVehicle(
		@ModelAttribute("vehicle") Vehicle vehicle) {
		vehicleService.saveVehicle(vehicle);
		return "redirect:/vehicle/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("vehicleId") int id, Model model) {
		Vehicle vehicle = vehicleService.getVehicle(id);
		model.addAttribute("vehicle", vehicle);
		return "vehicle-form";
	}
	
	@GetMapping("/showVehicle")
	public String showVehicle(@RequestParam("vehicleId") int id, Model model) {
		Vehicle vehicle = vehicleService.getVehicle(id);
		model.addAttribute("vehicle", vehicle);
		return "vehicle-show";
	}
	
	@GetMapping("/delete")
	public String deleteVehicle(@RequestParam("vehicleId") int id) {
		vehicleService.deleteVehicle(id);
		return "redirect:/vehicle/list";
	}


}

