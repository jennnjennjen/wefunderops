class PagesController < ApplicationController

def calculate
  @calctool = Calctool.find params[:fiscalyear]
  flash[:notice] = "Information submitted."
end
 

end
