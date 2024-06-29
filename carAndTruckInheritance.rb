"""
I certify, that this computer program submitted by me is all of my own work.
Signed: Dylan Theis 6/1/2024

Author: Dylan Theis
Date: Summer 2024
Class: CSC330
Project: Car and Truck Inheritance
Description: Lesson 8 Assignment a car and truck having common data and shared functionality
 """

# Common module with shared functionality
module VehicleFunctions
  # Function to start engine
  def startEngine
    puts "#{self.class} engine started."
  end
  # Function to stop engine
  def stopEngine
    puts "#{self.class} engine stopped."
  end
end

# Base class Vehicle with common data among subclasses
class Vehicle
  attr_accessor :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def toString
    puts "This is a #{@year} #{@make} #{@model}."
  end
end

# Car class inherites from Vehicle
class Car < Vehicle
  # Module VehicleFunctions
  include VehicleFunctions

  # Class car has own method drive
  def drive
    puts "Car is driving."
  end
end

# Truck class inherites from Vehicle 
class Truck < Vehicle
  # Module VehicleFunctions
  include VehicleFunctions

  # Truck class has own method haul
  def haul
    puts "Truck is hauling."
  end
end

# Testing
car = Car.new("Hyundai", "Sonata", 2024)
car.toString
car.startEngine
car.drive
car.stopEngine

truck = Truck.new("Ford", "F-150", 2016)
truck.toString
truck.startEngine
truck.haul
truck.stopEngine
