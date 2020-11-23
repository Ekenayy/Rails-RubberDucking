class Student < ApplicationRecord
    has_many :ducks

    validates :mod, numericality: { less_than_or_equal_to: 5 }
    validates_presence_of :name


end
