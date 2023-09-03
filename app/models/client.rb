class Client < ApplicationRecord
    has_many :calls, dependent: :destroy
    has_many :users, through: :calls
    has_many :reasons, through: :calls
    validates :name, presence: true
    validates :phone, presence: true
    validates :email, presence: true

    # Define una asociación a sí mismo llamada "client" (esto puede ser inusual).
        belongs_to :client, class_name: 'Client', optional: true

    # Scope para buscar por nombre y email
        scope :por_nombre_o_email, -> (cadena) {where("name LIKE ? OR email LIKE ?", "%#{cadena}%", "%#{cadena}%")}
end
