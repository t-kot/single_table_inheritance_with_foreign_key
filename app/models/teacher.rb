class Teacher < ActiveRecord::Base
  attr_accessible :skill
  belongs_to :info, class_name: 'TeacherInfo'
end
