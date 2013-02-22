require 'spec_helper'

describe Snippet do
  describe "Validations" do
    it {should validate_presence_of(:post)}
    it {should validate_presence_of(:post_date)}
  end
end
