require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should validate_numericality_of(:x_pos).only_integer.is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
  it { should validate_numericality_of(:y_pos).only_integer.is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
end
