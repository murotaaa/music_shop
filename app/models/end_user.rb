class EndUser < ApplicationRecord
  has_many :purchase_histories
  has_many :addresses
  has_many :favorites
  has_many :reviews
  has_many :cart_items

  enum usually_payment: { "代引き": 0, "銀行振込": 1, "クレジットカード": 2 }

  accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
