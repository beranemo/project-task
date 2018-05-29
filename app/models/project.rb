class Project < ApplicationRecord
  validates(
    :title, 
    presence: { message: '不能為空' }, 
    length: { minimum: 3, message: '最少長度要 3'})
end
