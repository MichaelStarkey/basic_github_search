#require "basic_github_search/version"
require "HTTParty"
require "Nokogiri"
require "JSON"
require "Pry"
require "csv"

module BasicGithubSearch
  class BasicGithubSearch
    def initialize(k="tetris")
      @keyword = k
    end

    results = HTTParty.get("http://api.github.com/search/repositories?q=#{@keyword}&sort=stars&order=desc", headers: {'User-Agent' => 'BasicGithubSearch_Spider'}, :verify => false)
    SearchItems = results["items"]
    urls = []
    SearchItems.each do |i|
      urls += [i["html_url"]]
    end
    def self.links()
      return {:link => urls}
    end
  end
end
