require_relative './accounts'
require 'json'
require 'rack/test'
require 'pacto'

describe 'accounts service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  before do
    Pacto.load_contracts('contracts', 'http://localhost:4567').stub_all
  end

  it 'works well' do
    get '/accounts'
    accounts = JSON.parse(last_response.body)
    expect(accounts.size).to eq(1)
  end
end
