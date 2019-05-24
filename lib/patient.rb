class Patient
  @@all =[]
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date,self,doctor)
  end

  def all
    @@all
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    appointments.collect {|appt| appt.doctor}
  end




end
