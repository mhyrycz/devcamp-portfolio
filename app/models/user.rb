class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  def first_name
    self.name.split.first # self specific user e.g. User.last => self is about present instance
    # split - it will split in array where is space
    # first - first element in array
  end

  def last_name
    self.name.split.last
  end

end
