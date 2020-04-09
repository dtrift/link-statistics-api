require 'spec_helper'
require './services/link_handler'

RSpec.describe LinkHandler do
  let(:url) { 'some uri' }
  
  it 'calls .call' do
    expect(LinkHandler).to receive(:call)

    LinkHandler.call(url)
  end
end
