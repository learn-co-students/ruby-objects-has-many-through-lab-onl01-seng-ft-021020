class Appointment

  attr_reader :patient, :doctor, :date

  @@all = []

  def initialize(date, patient,doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end