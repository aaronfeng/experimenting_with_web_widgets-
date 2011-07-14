class WidgetsController < ApplicationController
  def show
    send_file Widget.new(params[:id]).home_page,
             :disposition => 'inline',
             :type => 'text/html'
  end

  def proxy
    proxy = Widget.new(params[:id]).proxy_app
    resp = proxy.call(request.env)
    render :nothing => true
  end

  def static
    send_file Widget.new(params[:id]).resource(params[:resource]),
             :disposition => 'inline',
             :type => 'image/jpeg'
  end
end
