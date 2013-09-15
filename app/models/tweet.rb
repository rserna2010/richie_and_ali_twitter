class Tweet < ActiveRecord::Base
  belongs_to :user
  before_create :analyze_tweet
  

  def analyze_tweet
    analyzer = Sentimental.new
    self.tweet_rating = analyzer.get_score self.text
  end

end
