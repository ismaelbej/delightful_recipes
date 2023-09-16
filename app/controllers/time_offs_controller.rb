class TimeOffsController < ApplicationController
  before_action :set_time_off, only: %i[ show edit update destroy ]

  # GET /time_offs or /time_offs.json
  def index
    @time_offs = TimeOff.all
  end

  # GET /time_offs/1 or /time_offs/1.json
  def show
  end

  # GET /time_offs/new
  def new
    @time_off = TimeOff.new
  end

  # GET /time_offs/1/edit
  def edit
  end

  # POST /time_offs or /time_offs.json
  def create
    @time_off = TimeOff.new(time_off_params)

    respond_to do |format|
      if @time_off.save
        format.html { redirect_to time_off_url(@time_off), notice: "Time off was successfully created." }
        format.json { render :show, status: :created, location: @time_off }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @time_off.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_offs/1 or /time_offs/1.json
  def update
    respond_to do |format|
      if @time_off.update(time_off_params)
        format.html { redirect_to time_off_url(@time_off), notice: "Time off was successfully updated." }
        format.json { render :show, status: :ok, location: @time_off }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @time_off.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_offs/1 or /time_offs/1.json
  def destroy
    @time_off.destroy

    respond_to do |format|
      format.html { redirect_to time_offs_url, notice: "Time off was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_off
      @time_off = TimeOff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def time_off_params
      params.require(:time_off).permit(:range, :description, :kind, :half_day, :paid_time, :calendar, :worker_id)
    end
end
