require 'pry'

# class Doctor

#     attr_reader :name

#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end
    
#     def self.all
#         @@all
#     end

#     def appointments
#         Appointment.all.select{|appointment| appointment.doctor == self}
#     end

#     def new_appointment(date, patient)
#         appointment = Appointment.new(date, patient, self)
#     end

#     def patients
#         Appointment.all.collect{ |appointment|
#         if appointment.doctor == self
#             appointment.patient
#             binding.pry
#         end
#         }
#     end

# end
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
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)
    end

    def patients
        Appointment.all.collect{ |appointment|
        if appointment.doctor == self
            appointment.date
        end
        }
    end

end