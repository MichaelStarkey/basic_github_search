require 'HTTParty'

module BasicGithubSearch
  class BasicGithubSearchApi
    attr_reader :urls

    def initialize(k)
      keyword = k
      @url = "http://api.github.com/search/repositories?q=#{keyword}&sort=stars&order=desc"
    end

    def search
      response = HTTParty.get(@url, headers: {'User-Agent' => 'BasicGithubSearch_Spider'}, :verify => false)
      response.parsed_response
      @searchItems = response["items"]
      @urls = @searchItems.map do |i|
        i["html_url"]
      end
    end
  end
end
