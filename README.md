# Links statistics API

Simple tracking of visited links.

## Installation

Execute:

    $ bundle
    $ foreman start

## Usage

POST

    $ curl "http://localhost:7002/api/v1/visited_links?links[]=https://some-url.ru/viewer/sessions/83380/materials/190037&links[]=one-more-url.com/blog&links[]=https://and-more-url.ru/search?q=456" \
     -X POST

GET

    $ curl "http://localhost:7002/api/v1/visited_domains?from=1586413932&to=1586414215"

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dtrift/link-statistics-api
