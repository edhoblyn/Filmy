class WatchSessionsController < ApplicationController
  def show
    @watch_session = current_user.watch_sessions.find(params[:id])
    @messages = @watch_session.messages.order(:created_at)
    @message = Message.new
    @chats = @watch_session.chats.where(user: current_user)
  end
end
