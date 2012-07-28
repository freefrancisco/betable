require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Betable" do
  before :each do
    @client_id = "blah"
    @client_secret = "blah"
    @redirect_uri = "blah"
    @betable = Betable.new(@client_id, @client_secret, @redirect_uri)
  end

  it "initializes" do
    @betable.should_not be nil
  end

end
