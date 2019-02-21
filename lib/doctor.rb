class Doctor
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  def appointments
    appts = Appointment.all
    my_appts = appts.select {|appt| appt.doctor == self}
    return my_appts
  end
  def patients
    patients = Patient.all
    my_patients = patients.select {|patient| patient.doctor == self}
    return my_patients
  end

end
