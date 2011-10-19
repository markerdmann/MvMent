class Post < ActiveRecord::Base
  belongs_to :channel
  
  before_create :add_channel_name
  
  private
    def add_channel_name
      self.name = self.channel.name
    end
end
