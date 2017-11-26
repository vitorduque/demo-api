require 'test_helper'

class DeploysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deploy = deploys(:one)
  end

  test "should get index" do
    get deploys_url, as: :json
    assert_response :success
  end

  test "should create deploy" do
    assert_difference('Deploy.count') do
      post deploys_url, params: { deploy: { feature: @deploy.feature, responsible: @deploy.responsible, status: @deploy.status, version: @deploy.version } }, as: :json
    end

    assert_response 200
  end
end
