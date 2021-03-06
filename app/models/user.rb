class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, through: :transactions
  has_many :reviews
  has_many :transactions, dependent: :destroy
  has_many :items

  has_one_attached :photo

  validates :name, presence: true
end
