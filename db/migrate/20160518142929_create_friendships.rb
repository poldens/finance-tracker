class CreateFriendships < ActiveRecord::Migration[4.2]
  def change
    create_table :friendships do |t|
      t.belongs_to :user
      t.belongs_to :friend, class: 'User'
      t.timestamps null: false
    end
  end
end
