ENV['RACK_ENV'] = 'test'

require '~/startup-sprint/app'
require 'rack/test'
require 'rspec'

RSpec.describe 'Home screen shows city field' do
  include Rack::Test::Methods 
  
  def app
    Sinatra::Application
  end

  it "has city field" do
    get '/'
    assert last_response.ok?
    assert last_response.body.include?("City")
  end
end
