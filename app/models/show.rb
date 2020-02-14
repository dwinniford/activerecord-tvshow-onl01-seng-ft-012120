class Show < ActiveRecord::Base 
  def self.highest_rating
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show
    self.fin_by(rating: self.maximum)
  end 
end 