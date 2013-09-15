class Politician < ActiveRecord::Base
  has_many :tweets
  before_create :average
  validates :name, uniqueness: true
end


def average
  Politician.all.each do |politician|
    politician.average_score = politician.tweets.group.average('tweet_rating')
    politician.save 
  end

end





