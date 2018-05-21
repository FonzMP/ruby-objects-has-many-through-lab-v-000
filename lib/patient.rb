class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    Appointments.all.select do |appointment|
      appointment.doctor
    end
  end

end
