class Reason < ApplicationRecord
    has_many :calls
    has_many :users, through: :calls
    has_many :clients, through: :clients
end
