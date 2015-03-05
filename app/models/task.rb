class Task < ActiveRecord::Base
  validates :name, presence: true
  validates :completed, inclusion: { in: [true, false] }
end
