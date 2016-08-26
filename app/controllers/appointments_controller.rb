class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:new, :create, :show]

    def new
      @appointment = Appointment.new
    end

    def create
      @appointment = Appointment.create(appointment_params)
      redirect_to appointments_path(@appointment)
    end

    def show
      @appointment = Appointment.find(params[:id])
      @doctor = @appointment.doctor
    end

    private

    def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor_name, :patient_name)
  end
end
