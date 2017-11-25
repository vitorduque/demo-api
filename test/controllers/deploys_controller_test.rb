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

    assert_response 201
  end

  test "should show deploy" do
    get deploy_url(@deploy), as: :json
    assert_response :success
  end

  test "should update deploy" do
    patch deploy_url(@deploy), params: { deploy: { feature: @deploy.feature, responsible: @deploy.responsible, status: @deploy.status, version: @deploy.version } }, as: :json
    assert_response 200
  end

  test "should destroy deploy" do
    assert_difference('Deploy.count', -1) do
      delete deploy_url(@deploy), as: :json
    end

    assert_response 204
  end
end
