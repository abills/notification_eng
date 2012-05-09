class Subscription < ActiveRecord::Base
  has_many :rules
end
