class AppsController < ApplicationController
  before_action :set_app, only: [:show, :edit, :update, :destroy]
  def index
    @apps = App.all
  end

  def show
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
  end

  def update
    if @app.update(app_params)
      redirect_to app_path, notice: "つぶやきを編集しました"
    else
      render :edit
    end
  end

  def confirm
    @app = App.new(app_params)
  end

  def destroy
    @app.destroy
    redirect_to apps_path, notice: "つぶやきを削除しました"
  end

  private
  def app_params
    params.require(:app).permit(:content)
  end

  def set_app
    @app = App.find(params[:id])
  end

end
