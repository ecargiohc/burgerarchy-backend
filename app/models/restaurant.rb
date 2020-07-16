class Restaurant < ApplicationRecord
    has_many :reviews

    before_create :slugify
    
    
end
