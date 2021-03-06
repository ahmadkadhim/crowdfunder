class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates_presence_of :user_id, :project_id
  validates_numericality_of :amount, :greater_than => 0

end
