class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def appointments
    return Appointment.all.filter do |apt|
      apt.doctor == self
    end
  end

  def new_appointment(patient, date)
    return Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.collect do |apt|
      apt.patient
    end
  end
end
