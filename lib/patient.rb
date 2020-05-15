class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_appointment(doctor, date)
    return Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.filter do |apt|
      apt.patient == self
    end
  end

  def doctors
    self.appointments.collect do |apt|
      apt.doctor
    end
  end
end
