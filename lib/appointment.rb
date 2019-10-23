require 'pry'
class Appointment 
<<<<<<< HEAD
  attr_accessor  :name, :patient, :doctor 
  @@all= []
  
  def initialize(date,patient,doctor)
        @name = name 
        @patient = patient 
=======
  attr_accessor :patient, :date, :doctor
  
  @@all = []
  
  def initialize(date, patient, doctor)
        @patient = patient 
        @date = date 
>>>>>>> e699d6d36d58f97e352813d1e996ea781eecb312
        @doctor = doctor 
        @@all << self
        
  end 
  
  def self.all
        @@all
  end 
  
  
  # def patients
  #     self.patients
  # end 
  
  # def doctors
  #     self.doctor 
      
  # end 
  
end   