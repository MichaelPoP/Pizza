class PieTopping < ApplicationRecord
	belongs_to :pie
	belongs_to :topping

	validates :topping_id, uniqueness: {scope: :pie_id}
end
