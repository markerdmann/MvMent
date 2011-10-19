class AddChannelNameToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :channel_name, :string
  end
end
