class StudentInfo < UserInfo
  before_create :set_type
  has_one :detail, class_name: 'Student', foreign_key: :info_id

  private
  def set_type
    self.user_type_id = UserType.find_by_name('Student').id
  end
end
