# lists.rb
class Lists <ApplicationRecord
  validates :title, presence: true
  has_many :list_item
  belongs_to :user
end
