class JobsController < ApplicationController
  before_action :set_job, only: [:edit, :update, :destroy, :show]

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    job = Job.create(job_params)
    redirect_to jobs_path
  end

  def edit
  end

  def update
    @job.update_attributes(job_params)
    redirect_to jobs_path
  end

  def destroy
    @job.destroy
    redirect_to jobs_path
  end

  def show
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end

  def set_job
    @job = Job.find_by(:id => params[:id])
  end
end
