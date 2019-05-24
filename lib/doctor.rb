class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, doctor)
  end



end
