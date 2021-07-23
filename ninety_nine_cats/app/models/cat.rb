require 'action_view'

COLORS = %w(black gold pink purple turquoise green scarlet)
SEX = ['M', 'F']

class Cat < ApplicationRecord
    
    validates :color, inclusion: {in: COLORS, message: "%{value} is not a valid cat color"}
    validates :sex, inclusion: {in: SEX, message: "%{value} is not a valid sex"}
    
    
    def age(birth_date)
        birthday = Date.parse(birth_date)
        today = Date.today
        ((today - birthday).to_i)/365
    end

end