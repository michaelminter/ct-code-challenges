class MicroBloggingService
  API_ENDPOINT = 'https://api.twitter.com/1.1'.freeze

  attr_accessor :auth_token

  def initialize(auth_token = nil)
    @auth_token = auth_token
  end

  def user(username = 'casetabs')
    request(
      http_method: :get,
      endpoint: "users/show.json?screen_name=#{username}"
    )
  end

  def list(username = 'casetabs', count = 20)
    request(
      http_method: :get,
      endpoint: "statuses/user_timeline.json?user_name=#{username}&count=#{count}"
    )
  end

  private

  def client
    @_client ||= Faraday.new(API_ENDPOINT) do |client|
      client.request :url_encoded
      client.adapter Faraday.default_adapter
      client.headers['Authorization'] = "Bearer #{auth_token}" if auth_token.present?
    end
  end

  def request(http_method:, endpoint:, params: {})
    response = client.public_send(http_method, endpoint, params)
    Oj.load(response.body)
  end
end
