require 'pry'
require_relative "./appointment.rb"

# class Patient

#     attr_reader :name

#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end

#     def appointments
#         Appointment.all.select{|appointment| appointment.patient == self}
#     end


#     def new_appointment(doctor, date)
#         appointment = Appointment.new(date, self, doctor)
#         return appointment
#         binding.pry
#     end

#     def doctors
#         Appointment.all.collect{|app|
#             if app.date == self
#                 app.doctor
#             end
#         }
#     end


#     def self.all
#         @@all
#     end

# end

class Patient

    attr_accessor :patient

    @@all = []

    def initialize(patient)
        @patient = patient
        @@all << self
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.patient == self
            #binding.pry
        }
    end

    def self.all
        @@all
    end

    def doctors
        Appointment.all.collect {|a| 
            if a.patient == self
                a.doctor
            end
        }
    end    


end