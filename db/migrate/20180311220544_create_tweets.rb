class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :tweet_user_id
      t.text :body, null: false
      t.integer :tweet_id
      t.string :tweet_timestamp
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
