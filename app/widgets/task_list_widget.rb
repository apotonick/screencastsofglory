class TaskListWidget < Apotomo::Widget
  responds_to_event :newTask, :with => :update, :passing => :root
  
  def display
    @tasks = Task.all
    render
  end
  
  def update(evt)
    render :text => "$('##{widget_id} ul').append('<li>#{evt[:task].name}</li>')"
  end

end
