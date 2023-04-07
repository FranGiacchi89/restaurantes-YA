class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @schedule.destroy
    redirect_to schedules_path, status: :see_other
  end

  private

  def schdule_params
    params.require(:schedule).permit(:day)
  end

  def set_schedule
    @schedule = Schedule.find(params[:restaurant_id])
  end

  def set_id_schedule
    @schedule = Schedule.find(params[:id])
  end
end
