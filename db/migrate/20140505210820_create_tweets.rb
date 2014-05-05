class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :sender_id
      t.string :sender_name
      t.integer :recipient_id
      t.string :recipient_name
      t.text :tweet
    end
  end
end
