class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wikis, dependent: :destroy

  after_initialize :default

  def default
    self.role ||= standard
  end

  enum role: [:standard, :premium, :admin]
end
