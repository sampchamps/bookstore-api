class Book < ApplicationRecord
    belongs_to :catgory

    validates :title, :author, presence: true, length: { minimum: 3}
    
end