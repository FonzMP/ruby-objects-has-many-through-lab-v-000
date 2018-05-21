class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointments.all.select do |appointment|
      appointment.patient == self
    end
  end

end
