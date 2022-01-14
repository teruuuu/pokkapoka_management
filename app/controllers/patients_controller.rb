class PatientsController < ApplicationController
  def index
    @patients = Patient.includes(:user).order(:created_at)
  end

  def new
    @patient = Patient.new
  end

  def create
    patient = current_user.patients.create!(patient_params)
    redirect_to patient
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def patient_params
    params.require(:patient).permit(:name, :birthday, :gender, :address, :degree_of_care, :key_person)
  end
end
