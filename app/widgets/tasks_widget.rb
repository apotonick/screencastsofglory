class TasksWidget < Apotomo::Widget
  respond_to_event :change_page
  respond_to_event :destroy_task
  respond_to_event :complete_task

  def display
    @tasks = Task.where(:completed => false).page(params[:page]).per(3)
    render
  end

  def change_page
    update :state => :display
  end

  def destroy_task
    Task.destroy(params[:id])
    update :state => :display
  end

  def complete_task
    Task.find(params[:id]).update_attribute(:completed, true)
    update :state => :display
  end
end
