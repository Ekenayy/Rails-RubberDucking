class Duck < ApplicationRecord
    belongs_to :student 
    validates_presence_of :name, :message => "must have name"
    validate :name_cannot_be_ducky
    validates_presence_of :description
    validates :description, uniqueness: {:message => "must be unique"}

    private 

    def name_cannot_be_ducky

        if self.name.downcase == 'ducky'
            self.errors.add(:name, "can't be ducky my man sowwy")
        end 
    end 

end
