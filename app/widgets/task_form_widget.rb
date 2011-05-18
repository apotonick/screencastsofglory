class TaskFormWidget < Apotomo::Widget
  responds_to_event :submit
  
  def display
    render
  end
  
  def submit(evt)
    task = Task.create(evt[:task])
    replace :state => :display
  end
  

end
