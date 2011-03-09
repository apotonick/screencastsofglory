class Task < ActiveRecord::Base
  attr_accessible :name, :completed_at
end
