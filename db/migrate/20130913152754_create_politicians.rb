class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
    t.string  :name
    t.string  :state
    t.decimal :average_score
    t.integer :total_followers
    t.string  :hande
    t.string  :avatar

    t.timestamps
    end
  end
end
