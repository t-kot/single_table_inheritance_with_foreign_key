class UserInfo < ActiveRecord::Base
  belongs_to :user_type

  def self.instantiate(record)
    sti_class = (UserType.find(record['user_type_id']).name + 'Info').constantize
    record_id = sti_class.primary_key && record[sti_class.primary_key]

    if ActiveRecord::IdentityMap.enabled? && record_id
      instance = use_identity_map(sti_class, record_id, record)
    else
      instance = sti_class.allocate.init_with('attributes' => record)
    end

    instance
  end
end
