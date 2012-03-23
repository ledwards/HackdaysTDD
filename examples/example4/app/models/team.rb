class Team < ActiveRecord::Base
  def size
    [member_1, member_2].select{|m| m.present?}.count
  end
end
