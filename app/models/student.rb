class Student < ApplicationRecord
    belongs_to :teacher

    validates :name, presence: true 
    validates :age, numericality: { only_integer: true, greater_than: 17 }
end
