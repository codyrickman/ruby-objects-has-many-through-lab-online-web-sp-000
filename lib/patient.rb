class Patient
  attr_reader :name, :doctor
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  def appointments
    appts = Appointment.all
    my_appts = appts.select {|appt| appt.patient == self}
    return my_appts
  end
  def doctors
    appts = Appointment.all
    my_appts = appts.select {|appt| appt.patient == self}
    doctors = my_appts.collect {|appt| appt.doctor}
    return doctors
  end
end
