class FormsController < ApplicationController
  # POST /submissions
  def create
    submission = Submission.new(submission_params)
    if submission.save
      render json: submission, status: :created
    else
      render json: { errors: submission.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /submissions
  def index
  submissions = Submission.all
  render json: submissions
  end

  private

  def submission_params
    params.require(:submission).permit(:name, :phone_number, :email, :address, :password, :age)
  end
end
