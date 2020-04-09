require 'sinatra'
require 'json'
require 'redis'
require './services/link_handler'

redis = Redis.new(host: 'localhost')

before do
  content_type 'application/json'
end

get "/api/v1/visited_domains" do
  return unless params[:from]

  redis.zrangebyscore(
    "links",
    params[:from],
    params[:to]
  ).to_json
end

post "/api/v1/visited_links" do
  return unless params[:links]

  params[:links].each do |link|
    resource = LinkHandler.call(link)
    created_at = Time.now.to_i

    redis.zadd("links", created_at, resource)
  end
end
