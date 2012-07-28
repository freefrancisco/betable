class Betable
  AUTHORIZE_ENDPOINT = "https://betable.com/authorize"
  ENDPOINT = "https://api.betable.com/1.0"

  def initialize(client_id, client_secret, redirect_uri)
    @client_id = client_id
    @client_secret = client_secret
    @redirect_uri = redirect_uri
  end

  def authorize(state = false)
    location = "#{AUTHORIZE_ENDPOINT}?client_id=#{@client_id}&redirect_uri#{redirect_uri}&response_type=code"
    location += "&state=#{state}" if state
  end

end
