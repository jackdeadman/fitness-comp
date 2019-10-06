class ActivityTypesController < ApplicationController
  before_action :set_activity_type, only: [:show, :edit, :update, :destroy]

  # GET /activity_types
  def index
    @activity_types = ActivityType.all
  end

  # GET /activity_types/1
  def show
  end

  # GET /activity_types/new
  def new
    @activity_type = ActivityType.new
  end

  # GET /activity_types/1/edit
  def edit
  end

  # POST /activity_types
  def create
    @activity_type = ActivityType.new(activity_type_params)

    if @activity_type.save
      redirect_to @activity_type, notice: 'Activity type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /activity_types/1
  def update
    if @activity_type.update(activity_type_params)
      redirect_to @activity_type, notice: 'Activity type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /activity_types/1
  def destroy
    @activity_type.destroy
    redirect_to activity_types_url, notice: 'Activity type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_type
      @activity_type = ActivityType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def activity_type_params
      new_params = params.require(:activity_type).permit(:name, :emoji, :measure, :time_conversion)
    end
end
