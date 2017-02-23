require "basic_github_search/version"
require "HTTParty"

module BasicGithubSearch
  def self.gitSearch(keyword)
    searchResults = BasicGithubSearchApi.new(keyword).search.urls
    puts searchResults
  end
end
