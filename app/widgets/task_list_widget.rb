class TaskListWidget < Apotomo::Widget
  respond_to_event :new_task, :passing => :root
  
  def display
    @tasks = Task.all
    render
  end
  
  def new_task(evt)
    replace :state => :display
  end
  
end
