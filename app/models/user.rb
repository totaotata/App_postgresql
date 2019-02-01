class User < ApplicationRecord
  validates :first_name, :last_name, :username, presence: true
  validates :username, length: { minimum: 3 }
  has_many :books
  def full_name
      return self.first_name + " " +  self.last_name
  end
end
