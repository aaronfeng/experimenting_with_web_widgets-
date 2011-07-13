class CarsController < ApplicationController
  def index
    respond_to do |format|
      format.js {
        html = render_to_string
        json = {"html" => html}.to_json
        callback = params[:callback]
        jsonp = callback + "(" + json + ")"
        render :text => jsonp, :content_type => "text/javascript"
      }
    end
  end
end
