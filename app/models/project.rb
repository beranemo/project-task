class Project < ApplicationRecord
  validates :title, presence: { message: '不能為空' }
end
