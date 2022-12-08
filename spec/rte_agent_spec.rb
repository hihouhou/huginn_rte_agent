require 'rails_helper'
require 'huginn_agent/spec_helper'

describe Agents::RteAgent do
  before(:each) do
    @valid_options = Agents::RteAgent.new.default_options
    @checker = Agents::RteAgent.new(:name => "RteAgent", :options => @valid_options)
    @checker.user = users(:bob)
    @checker.save!
  end

  pending "add specs here"
end
