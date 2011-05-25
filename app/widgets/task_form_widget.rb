class TaskFormWidget < Apotomo::Widget
  responds_to_event :submit
  
  def display
    #if Task.count < 3
      render
    #else
    #  render({:state => :error}, "Yiha!")
    #end
  end
  
  def error(arg)
    @count = Task.count
    render + arg
  end
  
  
  def submit(evt)
    task = Task.create(evt[:task])
    
    replace "#hello", :state => :display
  end
  

end
