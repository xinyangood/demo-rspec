class Girl < ApplicationRecord
  attr_accessor :single, :beautiful

  def initialize(params)
    self.single = params[:single]
    self.beautiful = params[:beautiful]
  end

  # 是否有机会
  def have_chance?
    self.single
  end

  # 是否符合我的口味
  def suit_my_taste?
    self.single && self.beautiful
  end

end
