class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string      :text
      t.float     :tweet_rating
      t.datetime    :date_tweeted
      t.float     :tweet_id
      t.timestamps 

      t.belongs_to  :politician
    end
  end
end



