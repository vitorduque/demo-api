require 'test_helper'

class DeployTest < ActiveSupport::TestCase

  test "should now be valid without feature" do
    deploy = Deploy.new(version: '0.0.1', responsible: 'Someone', status: 'Docker build')
    assert_not deploy.valid?
  end

  test "should now be valid without version" do
    deploy = Deploy.new(feature: 'Some CRUD',  responsible: 'Someone', status: 'Docker build')
    assert_not deploy.valid?
  end

  test "should now be valid without responsible" do
    deploy = Deploy.new(feature: 'Some CRUD', version: '0.0.1',  status: 'Docker build')
    assert_not deploy.valid?
  end

  test "should now be valid without status" do
    deploy = Deploy.new(feature: 'Some CRUD', version: '0.0.1', status: 'Docker build')
    assert_not deploy.valid?
  end

end
