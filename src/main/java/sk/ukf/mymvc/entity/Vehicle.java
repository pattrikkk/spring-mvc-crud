package sk.ukf.mymvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vehicle")
public class Vehicle {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="znacka")
	private String znacka;
	
	@Column(name="model")
	private String model;
	
	@Column(name="najazdene_km")
	private int najazdene_km;
	
	@Column(name="cena")
	private int cena;
	
	@Column(name="prevodovka")
	private String prevodovka;
	
	@Column(name="typ_paliva")
	private String typ_paliva;
	
	@Column(name="vykon")
	private int vykon;
	
	@Column(name="karoseria")
	private String karoseria;
	
	@Column(name="majitel")
	private String majitel;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getZnacka() {
		return znacka;
	}

	public void setZnacka(String znacka) {
		this.znacka = znacka;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getNajazdene_km() {
		return najazdene_km;
	}

	public void setNajazdene_km(int najazdene_km) {
		this.najazdene_km = najazdene_km;
	}

	public int getCena() {
		return cena;
	}

	public void setCena(int cena) {
		this.cena = cena;
	}

	public String getPrevodovka() {
		return prevodovka;
	}

	public void setPrevodovka(String prevodovka) {
		this.prevodovka = prevodovka;
	}

	public String getTyp_paliva() {
		return typ_paliva;
	}

	public void setTyp_paliva(String typ_paliva) {
		this.typ_paliva = typ_paliva;
	}

	public int getVykon() {
		return vykon;
	}

	public void setVykon(int vykon) {
		this.vykon = vykon;
	}

	public String getKaroseria() {
		return karoseria;
	}

	public void setKaroseria(String karoseria) {
		this.karoseria = karoseria;
	}

	public String getMajitel() {
		return majitel;
	}

	public void setMajitel(String majitel) {
		this.majitel = majitel;
	}
	
	

}
