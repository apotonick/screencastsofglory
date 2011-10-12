class TaskListWidget < Apotomo::Widget
  responds_to_event :newTask, :with => :update, :passing => :root
  
  def display
    @tasks = Task.all
    render
  end
  
  def update(evt)
    replace :state => :display
  end

end
