class Pie < ApplicationRecord
	has_many :pie_toppings, dependent: :destroy
	has_many :toppings, through: :pie_toppings

	validates :name, :presence => true
end
