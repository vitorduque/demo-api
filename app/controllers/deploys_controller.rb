class DeploysController < ApplicationController
  before_action :set_deploy, only: [:show, :update, :destroy]

  def index
    @deploys = Deploy.all

    render json: @deploys
  end

  def show
    render json: @deploy
  end

  def create
    @deploy = Deploy.new(deploy_params)

    if @deploy.save
      render json: @deploy, status: :created, location: @deploy
    else
      render json: @deploy.errors, status: :unprocessable_entity
    end
  end

  def update
    if @deploy.update(deploy_params)
      render json: @deploy
    else
      render json: @deploy.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @deploy.destroy
  end

  private
    def set_deploy
      @deploy = Deploy.find(params[:id])
    end

    def deploy_params
      params.require(:deploy).permit(:feature, :version, :responsible, :status)
    end
end
