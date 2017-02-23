require 'HTTParty'

module BasicGithubSearch
  class BasicGithubSearchApi
    def initialize(k):
      keyword = k
      @url = "http://api.github.com/search/repositories?q=#{keyword}&sort=stars&order=desc"
    end

    def search:
      response = HTTParty.get(@url, headers: {'User-Agent' => 'BasicGithubSearch_Spider'}, :verify => false)
      response.parsed_response
      SearchItems = response["items"]
      @urls = []
      SearchItems.each do |i|
        @urls += [i["html_url"]]
      end
    end
  end
end
