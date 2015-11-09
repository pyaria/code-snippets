class RubiesController < ApplicationController
  def index
    @rubies = Ruby.last(5)
  end

  def new
    @ruby = Ruby.new
    @rubies = Ruby.all
  end

  def create
    @ruby = Ruby.new(ruby_params)
    if @ruby.save
      redirect_to root_path, notice: "Ruby snippet saved!"
    else
      render :new
    end
  end

  def show
    @ruby = Ruby.find(params[:id])
  end

  def edit
    @ruby = Ruby.find(params[:id])
  end

  def update
    @ruby = Ruby.find(params[:id])
    if @ruby.update(ruby_params)
      redirect_to ruby_path(@ruby), notice: "Update to code saved!"
    else
      render :edit
    end
  end

  def destroy
    ruby = Ruby.find(params[:id])
    if ruby.destroy
      redirect_to rubies_path
    else
      render :show
    end
  end

  private
  def ruby_params
    params.require(:ruby).permit([:title, :code])
  end
end
