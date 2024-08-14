class Client < ApplicationRecord
    validates :name,:phone, :cpf , presence: true
end

