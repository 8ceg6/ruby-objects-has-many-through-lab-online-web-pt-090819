require 'pry'
class Doctor 
<<<<<<< HEAD
    attr_accessor :name,  :patient

=======
    attr_accessor :name, :patient,:appointment, :date
>>>>>>> e699d6d36d58f97e352813d1e996ea781eecb312
@@all = []    
    
    def initialize(name)
        @name = name
<<<<<<< HEAD
        
        @patient = patient
        @@all << self
       
=======
        @date = date
        @@all << self
>>>>>>> e699d6d36d58f97e352813d1e996ea781eecb312
    end 
    
    def self.all 
        @@all
    end 

<<<<<<< HEAD
   def new_appointment(patient,date)
        Appointment.new(date,patient,self) 
    end
    
    def appointments
        
        Appointment.all.select {|appt| appt.doctor == self}
        
    end
  
    def patients
        appointments.map {|appt| appt.patient}
    
=======
   
    def appointments
        Appointment.all.select do |appointment|
        appointment.doctor == self
        end
    end
    
    def new_appointment(patient,date)
        Appointment.new(patient, self, date) 
    end
    
    
    def patients
        appointments.map do |appointment|
        appointment.patients
    end
>>>>>>> e699d6d36d58f97e352813d1e996ea781eecb312
  end
end




