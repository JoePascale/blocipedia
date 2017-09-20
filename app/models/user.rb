class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wikis, dependent: :destroy

  before_create :set_role

  def set_role
    self.role ||= :standard
  end

  enum role: [:standard, :premium, :admin]
end
