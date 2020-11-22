class Admin::MessagesController < Admin::BaseController

  def index
    @messages = Message.desc.all
  end
end