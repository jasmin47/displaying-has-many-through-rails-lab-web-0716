class DoctorsController < ApplicationController

    before_action :set_doctor, only: [:new, :create, :show]

      def new
        @doctor = Doctor.new
      end

      def create
        @doctor = Doctor.create(doctor_params)
        redirect_to doctors_path(@doctor)
      end

      def show
        @doctor = Doctor.find(params[:id])
      end

      private

      def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end

end
