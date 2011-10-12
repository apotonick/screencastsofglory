class TaskCounterWidget < Apotomo::Widget
  responds_to_event :newTask, :with => :update, :passing => :root
  
  def display
    @count = Task.count
    render
  end
  
  def update(evt)
    replace :state => :display
  end
  

end
