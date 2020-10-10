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

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
        appointment
    end

    def self.all
        @@all
    end

end