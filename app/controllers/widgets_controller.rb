class WidgetsController < ApplicationController
  def show
    send_file Widget.new(params[:id]).home_page,
             :disposition => 'inline',
             :type => 'text/html'
  end

  def static
    send_file Widget.new(params[:id]).resource(params[:resource]),
             :disposition => 'inline',
             :type => 'image/jpeg'
  end
end
