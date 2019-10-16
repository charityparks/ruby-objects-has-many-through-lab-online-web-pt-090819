
class Patient
    attr_accessor :name

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
        Appointment.all.select{|appointment| appointment.patient == self}
    end

    def doctors
        appointments.collect{|appointment| appointment.doctor}
    end



# =======
# class Patient 
 
#   attr_accessor :name
#   @@all = []
  
#   def self.all
#     @@all
#   end
  
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
  
#   def new_appointment(doctor, date)
#     Appointment.new(date, self, doctor)
#   end
  
#   def appointments 
#     appointments.all.select {|appointment| appointment.patient == self}
#   end
    
#   def doctors
#     appointments.collect {|apointment| appointment.doctor}
#   end
# >>>>>>> d32ed8255625fceaa8462a2d315af6a7c0b8dad1
# end