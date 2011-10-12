class TasksController < ApplicationController
  
  has_widgets do |root|
    root << widget(:task_form)
    root << widget(:task_list)
    root << widget(:task_counter)
  end


  def index
  end

end
