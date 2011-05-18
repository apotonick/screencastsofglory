class TasksController < ApplicationController
  
  has_widgets do |root|
    root << widget(:task_form)
  end


  def index
  end

end
