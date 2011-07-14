class Widget
  class Proxy
    def self.call(env)
      name = env["PATH_INFO"].match(/\/widgets\/(\w*)/)[1]
      proxy = ::Widget.new(name).proxy_app
      proxy.call(env)
    end
  end

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def title
    name
  end

  def id
    SecureRandom.uuid
  end

  def render(view)
    view.render :partial => 'widgets/iframe', :locals => { :widget => self }
  end

  def base
    Rails.root.join('app', 'widgets', name)
  end

  def home_page
    base.join('index.html')
  end

  def resource(path)
    base.join(path)
  end

  def proxy_app
    load base.join('proxy.rb').to_s
    Widget::Proxy.const_get(name.capitalize).new
  end
end
