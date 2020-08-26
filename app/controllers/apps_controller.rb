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
    App.create(app_params)
    redirect_to new_app_path
  end

  def edit
  end

  def confirm
  end

  private
  def app_params
    params.require(:app).permit(:content)
  end

end
