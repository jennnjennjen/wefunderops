class PagesController < ApplicationController

@calctool = 5

def calculate

  validates :month, numericality: true
  validates :year, numericality: true

  @calctool = params[:fiscalyear][:company]
  dates = :fiscalyear + 120
  return dates 
  flash[:notice] = "Information submitted."
end
 

end
