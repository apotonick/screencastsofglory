require 'test_helper'

class TaskFormWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:task_form, 'me')
  end
  
  test "display" do
    render_widget 'me'
    assert_select "h1"
  end
end
