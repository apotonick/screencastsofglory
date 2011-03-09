class CompletedTasksWidget < TasksWidget
  respond_to_event :destroy_task
  def display
    @tasks = Task.where(:completed => true).page(params[:page])
    render
  end
end
