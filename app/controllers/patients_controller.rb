class PatientsController < ApplicationController
  before_action :set_patient, only: [:new, :create, :show]

    def new
      @patient = Patient.new
    end

    def create
      @patient = Patient.create(patient_params)
      redirect_to patients_path(@patient)
    end

    def show
    end

    def index
      @patients = Patient.all
    end

    private

    def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age)
  end

end
