class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def create
    @log = Log.create!(:log => "ip: #{request.env['HTTP_X_FORWARDED_FOR'] || request.remote_ip} - #{params[:log]}")
    render :nothing => true
  end
end