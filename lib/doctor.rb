class Doctor
 #attr_accessor :name, :patient, :doctor, :date
 attr_reader :name, :appointment, :patient

  @@all_doc = []

  def initialize(name)
    @name = name
    @@all_doc << self
  end

  def self.all
    @@all_doc
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    self.appointments.last
  end
  
  

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor
    end
  end

def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end