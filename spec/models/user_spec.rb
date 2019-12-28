# == Schema Information
#
# Table name: users
#
#  id                :bigint           not null, primary key
#  age               :integer
#  birthday          :datetime
#  body_weight       :integer
#  commit            :text(65535)
#  height            :integer
#  name              :string(255)      not null
#  password_digest   :string(255)      not null
#  profile_image     :string(255)
#  self_introduction :text(65535)
#  sex               :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
