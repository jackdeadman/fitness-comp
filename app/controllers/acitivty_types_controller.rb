class AcitivtyTypesController < ApplicationController
  before_action :set_acitivty_type, only: [:show, :edit, :update, :destroy]

  # GET /acitivty_types
  def index
    @acitivty_types = AcitivtyType.all
  end

  # GET /acitivty_types/1
  def show
  end

  # GET /acitivty_types/new
  def new
    @acitivty_type = AcitivtyType.new
  end

  # GET /acitivty_types/1/edit
  def edit
  end

  # POST /acitivty_types
  def create
    @acitivty_type = AcitivtyType.new(acitivty_type_params)

    if @acitivty_type.save
      redirect_to @acitivty_type, notice: 'Acitivty type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /acitivty_types/1
  def update
    if @acitivty_type.update(acitivty_type_params)
      redirect_to @acitivty_type, notice: 'Acitivty type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /acitivty_types/1
  def destroy
    @acitivty_type.destroy
    redirect_to acitivty_types_url, notice: 'Acitivty type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acitivty_type
      @acitivty_type = AcitivtyType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def acitivty_type_params
      params.require(:acitivty_type).permit(:name, :emoji, :measure, :time_conversion)
    end
end
