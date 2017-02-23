require "basic_github_search/version"
require "basic_github_search/basic_github_search_api"

module BasicGithubSearch
  def self.gitSearch(keyword)
    result = BasicGithubSearchApi.new(keyword).search
    result
  end
end
