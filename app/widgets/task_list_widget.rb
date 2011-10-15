class TaskListWidget < Apotomo::Widget
  responds_to_event :newTask, :with => :update, :passing => :root
  
  def display
    @tasks = Task.all
    render
  end
  
  def update(evt)
    li = render :view => :task, :locals => {:task => evt[:task]}
    li = escape_js(li)
    render :text => "$('##{widget_id} ul').append(\"#{li}\")"
  end

end
