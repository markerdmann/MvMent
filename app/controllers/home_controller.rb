class HomeController < ApplicationController
  
  def index
    @user = current_user
    @channels = Channel.all
    @your_channels = @user.channels
    @subscriptions = @user.subscriptions
    @posts = @user.subscriptions.map {|s| s.channel.posts }.flatten
  end

end
