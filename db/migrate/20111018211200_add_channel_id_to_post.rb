class AddChannelIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :channel_id, :integer
  end
end
