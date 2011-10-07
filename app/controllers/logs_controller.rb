class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def create
    @log = Log.create!(:log => params[:log])
    render :nothing => true
  end
end