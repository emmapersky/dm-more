require 'pathname'
require Pathname(__FILE__).dirname.expand_path.parent + 'spec_helper'

describe Tag do
  before do
    @tag = Tag.new
  end

  it "should have id and name properties" do
    @tag.attributes.should have_key(:id)
    @tag.attributes.should have_key(:name)
  end

  it "should have many Taggings" do
    Tag.relationships.should have_key(:taggings)
  end

  it "should validate the presence of name" do
    @tag.should_not be_valid
    @tag.name = "Meme"
    @tag.should be_valid
  end
end
