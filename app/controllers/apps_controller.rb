class AppsController < ApplicationController
  def index
    @apps = App.all
  end

  def show
    @app = App.find(params[:id])
  end

  def new
    @app = App.new
  end

  def create
    @app = App.new(app_params)
    if @app.save
    redirect_to apps_path, notice: "つぶやき成功！！"
    else
      render :new
    end
  end

  def edit
    @app = app.find(params[:id])
  end

  def confirm
  end

  private
  def app_params
    params.require(:app).permit(:content)
  end

end
