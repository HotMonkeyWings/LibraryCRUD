class Book < ApplicationRecord
    validates :Title, presence: true
    validates :Author, presence: true
    validates :Publisher, presence: true
    validates :Year, presence: true
end
