<<<<<<< HEAD
require 'pry'
class Patient
  attr_accessor :name, :doctor
  
  @@all = []
  
    def initialize(name)
      @name = name
      @doctor = doctor
      
      @@all << self
     
    end
    
    def self.all 
        @@all 
    end
    
  def new_appointment(doctor, date)
      Appointment.new(date, self, doctor)
      
  end
  
  def appointments
      Appointment.all.select {|appt| appt.patient == self}
      
  end
  
  def doctors
      appointments.map {|appt| appt.doctor}
      
=======
class Patient
  attr_accessor :name, :doctor, :appointment
  
  @@all =[]
  
    def initialize(name)
      @name = name
      @@all << self
      
    end
    
    def self.all 
      @@all 
    end
    
  def new_appointment(doctor, date)
      Appointment.new(self, doctor, date)
  end
  
  def appointments
      Appointment.all.select do |appointment|
      appointment.patient == self
      end
  end
  
  def doctors
      Appointment.all.map do |appointment|
      appointment.doctor
      end
>>>>>>> e699d6d36d58f97e352813d1e996ea781eecb312
  end
end 