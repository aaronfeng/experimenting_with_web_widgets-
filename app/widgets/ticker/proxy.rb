class Widget
  class Proxy
    class Ticker
      def call(env)
        [200, {}, RestClient.get("http://localhost:4567")]
      end
    end
  end
end
