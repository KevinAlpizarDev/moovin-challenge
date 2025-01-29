class Challenge < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :end_date, presence: true
    validates :title, presence: true
end
