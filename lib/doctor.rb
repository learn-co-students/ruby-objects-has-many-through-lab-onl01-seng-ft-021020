require 'pry'

class Doctor
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
       Appointment.all.select do |appointment|
           appointment.doctor == self

        end
        

    end

    def new_appointment(patient, date)
        
        a = Appointment.new(date, patient, self)

        a

    end

    def patients


        appointments.map do |a|
            a.patient
        end

    end



end