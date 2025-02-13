package com.example.baitapbuoi2;

public class Customer {
    private String name;
    private String dateOfBirth;
    private String address;
    private String urlImage;
    public Customer() {

    }
    public Customer(String name, String dateOfBirth, String address, String urlImage) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.urlImage = urlImage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "name='" + name + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", address='" + address + '\'' +
                ", urlImage='" + urlImage + '\'' +
                '}';
    }
}
