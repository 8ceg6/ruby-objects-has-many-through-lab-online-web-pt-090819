require 'pry'
class Doctor 
    attr_accessor :name,  :patient

@@all = []    
    
    def initialize(name)
        @name = name
        
        @patient = patient
        @@all << self
       
    end 
    
    def self.all 
        @@all
    end 

   def new_appointment(patient,date)
        Appointment.new(date,patient,self) 
    end
    
    def appointments
        
        Appointment.all.select {|appt| appt.doctor == self}
        
    end
  
    def patients
        appointments.map {|appt| appt.patient}
    
  end
end




