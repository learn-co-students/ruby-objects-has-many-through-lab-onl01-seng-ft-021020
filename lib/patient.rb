require 'pry'
class Patient
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
 def new_appointment(doctor, date)
   appointment = Appointment.new(date, self , doctor)
  # binding.pry 
 end 
 
  def appointments 
    Appointment.all.select{|appointments| appointments.patient == self}
  end 
  
  def doctors 
    appointments.collect{|appointment| appointment.doctor}
  end 



end 