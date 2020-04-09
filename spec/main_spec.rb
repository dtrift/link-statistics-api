require 'spec_helper'

describe 'Main App' do
  let(:links) { %i[
    https://ya.ru https://ya.ru?q=123 funbox.ru
    https://stackoverflow.com/questions/11828270/how-to-exit-the-vim-editor
  ]}

  context 'POST #visited_links' do
    it 'returns status OK' do
      post "/api/v1/visited_links?links[]=#{links}"

      expect(last_response).to be_ok
    end
  end

  context 'GET #visited_domains' do
    before { get "/api/v1/visited_domains?from=0&to=9999999999" }

    it 'returns status OK' do
      expect(last_response).to be_ok
    end

    it 'returns body' do
      expect(last_response.body).to be_instance_of(String)
    end

    it 'returns JSON' do
      expect(last_response.headers['Content-Type']).to eq 'application/json'
    end
  end
end
