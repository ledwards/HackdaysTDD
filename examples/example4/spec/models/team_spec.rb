require 'spec_helper'

describe Team do
  describe "#size" do
    it "is 1 when member_1 is set" do
      team = Team.new(member_1: "foo")
      team.size.should == 1
    end

    it "is 1 when member_2 is set" do
      team = Team.new(member_2: "foo")
      team.size.should == 1
    end

    it "is 2 when both member_1 and member_2 are set" do
      team = Team.new(member_1: "foo", member_2: "bar")
      team.size.should == 2
    end

    it "is 0 when neither member_1 nor member_2 are set" do
      team = Team.new
      team.size.should == 0
    end
  end
end

