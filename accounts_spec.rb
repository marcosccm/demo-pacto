require 'json'
require 'faraday'

describe 'accounts service' do
  it 'works well' do
    accounts = JSON.parse(Faraday.get('http://localhost:5000/accounts').body)

    expect(accounts.size).to eq(1)
  end
end
