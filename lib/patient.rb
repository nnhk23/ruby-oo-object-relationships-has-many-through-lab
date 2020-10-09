class Patient

    attr_reader :name

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