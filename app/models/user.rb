class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  has_many :transactions

  after_initialize :default_values

  private
    def default_values
      self.balance ||= 0
    end
end
