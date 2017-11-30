require 'test_helper'

class DeployTest < ActiveSupport::TestCase
  test "should now be valid without feature" do
    deploy = Deploy.new(feature: 'feature one', version
    assert_not deploy.valid?
  end
end
