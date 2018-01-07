/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.arssi.bo;

/**
 *
 * @author Dikra Sordo
 */
public class Client {

	private int id;
	private String nom;
	private String adresse;
	private String ville;
	private String pays;
	private String telephone;
	private String fax;
	private String email;
	private String siteWeb;

	public int getId() {
		return id;
	}

	public Client() {
	}

	public Client(int id, String nom) {
		this.id = id;
		this.nom = nom;
	}

	public String getNom() {
		return nom;
	}

	public String getAdresse() {
		return adresse;
	}

	public String getVille() {
		return ville;
	}

	public String getPays() {
		return pays;
	}

	public String getTelephone() {
		return telephone;
	}

	public String getFax() {
		return fax;
	}

	public String getEmail() {
		return email;
	}

	public String getSiteWeb() {
		return siteWeb;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setSiteWeb(String siteWeb) {
		this.siteWeb = siteWeb;
	}

	@Override
	public String toString() {
		return "Client{" + "id=" + id + ", nom=" + nom + ", adresse=" + adresse + ", ville=" + ville + ", pays=" + pays
				+ ", telephone=" + telephone + ", fax=" + fax + ", email=" + email + ", siteweb=" + siteWeb + '}';
	}

}
