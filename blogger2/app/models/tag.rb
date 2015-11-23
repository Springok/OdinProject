class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :articles, through: :taggings

  def to_s  #override to_s method
    name
  end

end
