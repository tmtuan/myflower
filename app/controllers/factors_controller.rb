class FactorsController < ApplicationController
  before_action :find_factor, only: [:show, :edit, :update, :destroy]
  def index
    @factors = Factor.all
  end

  def new

  end

  def create
    @factor = Factor.new(factor_params)

    @factor.save
    redirect_to @factor
  end

  def edit

  end

  def update
    if @factor.update(factor_params)
      redirect_to index_path, notice: "Factor was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @factor.destroy
    redirect_to index_path
  end

  def show

  end

  private
  def factor_params
    params.require(:factor).permit(:name, :description)
  end

  def find_factor
    @factor = Factor.find(params[:id])
  end
end
