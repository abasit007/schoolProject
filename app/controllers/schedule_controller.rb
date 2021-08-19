class ScheduleController < ApplicationController
  before_action :authenticate_student!, only: %i[create destroy]
  before_action :set_section, only: %i[create]
  before_action :set_schedule, only: %i[destroy]

  def index
    @schedules = current_student.schedules
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Schedules",
               page_size: "A4",
               template: "schedule/schedule.pdf.erb"
      end
    end
  end

  def create
    @current_schedules = current_student.schedules.where(start_time: @section.start_time, end_time: @section.end_time)
    if @current_schedules.any?
      redirect_to root_path, alert: "Can't take two Classes at same Time"
    else
      @schedule = current_student.schedules.build(schedule_params)
      if @schedule.save
        redirect_to schedule_index_path, notice: "Successfully added the section to Schedule"
      else
        redirect_to root_path, alert: "Somethig Went Wrong!!"
      end
    end
    
  end

  def destroy
    if @schedule.destroy
      redirect_to schedule_index_path, notice: "Successfully Deleted the section from Schedule"
    else
      redirect_to schedule_index_path, alert: "Somethig Went Wrong!!"
    end
  end

  private

  def schedule_params
    @data = @section.as_json
    @data.delete("created_at")
    @data.delete("updated_at")
    @data.delete("id")
    @data
  end

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def set_section
    @section = Subject.find(params[:section_id])
  end
end
