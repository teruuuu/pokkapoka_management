class InformationsController < ApplicationController
  def create
    information = Information.create(information_params)
    redirect_to patient_path(information.patient.id)
  end

  private

  def information_params
    params.require(:information).permit(:comment).merge(user_id: current_user.id, patient_id: params[:patient_id])
  end
end
