class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :username
      t.string :profile_image_url
      t.text :content
      t.string :source
      t.datetime :happened_at
      t.string :screen_name

      t.timestamps
    end
  end
end
