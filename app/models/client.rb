class Client < ApplicationRecord
    has_many :calls, dependent: :destroy
    has_many :users, through: :calls
    has_many :reasons, through: :calls
end
