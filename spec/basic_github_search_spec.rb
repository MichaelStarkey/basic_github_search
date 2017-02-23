require "spec_helper"

RSpec.describe BasicGithubSearch do
  it "has a version number" do
    expect(BasicGithubSearch::VERSION).not_to be nil
  end

  it "should return a list of urls" do
    test_urls = BasicGithubSearch.gitSearch("tetris")
    test_urls.should_not be_nil
  end
end
