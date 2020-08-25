class AppsController < ApplicationController
  def index
    @app = App.new(app_params)
  end

  def show
  end

  def new
    @app = App.new
  end

  def create
    App.create(content: params[:app][:content])
    redirect_to "/apps/new"
  end

  def edit
  end

  def confirm
  end

end
