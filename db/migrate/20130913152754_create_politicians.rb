class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
    t.string  :name
    t.string  :state
    t.float :average_score
    t.integer :total_followers
    t.integer :total_tweets
    t.string  :handle
    t.string  :avatar

    t.timestamps
    end
  end
end
