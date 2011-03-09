class TaskFormWidget < Apotomo::Widget
  respond_to_event :submit
  
  def display
    render
  end
  
  def submit(evt)
    Task.create(evt[:task])
    
    trigger :new_task
    
    replace :view => :display
  end
  

end
