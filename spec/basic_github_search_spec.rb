require "spec_helper"

RSpec.describe BasicGithubSearch do
  it "has a version number" do
    expect(BasicGithubSearch::VERSION).not_to be nil
  end

  it "should return a list of urls" do
    result = BasicGithubSearch.gitSearch("tetris")
    result.length > 0
  end
end
