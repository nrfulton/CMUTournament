class Team < ActiveRecord::Base
  has_many :users
  validates :name, presence: true, length: { maximum: 50 },
                   uniqueness: {case_sensitive: true}
end
