class Student < ActiveRecord::Base
  attr_accessible :age
  belongs_to :info, class_name: 'StudentInfo'
end
