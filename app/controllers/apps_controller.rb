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
    @app = App.find(params[:id])
  end

  def update
    @app = App.find(params[:id])
    if @app.update(app_params)
      redirect_to app_path, notice: "つぶやきを編集しました"
    else
      render :edit
    end
  end

  def confirm
  end

  private
  def app_params
    params.require(:app).permit(:content)
  end

end
