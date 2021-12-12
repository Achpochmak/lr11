class PolyndromsController < ApplicationController
 

    before_action :set_polyndrom, only: %i[ show edit update destroy ]
    skip_before_action :verify_authenticity_token, only:[:new,:create]
  # GET /polyndroms or /polyndroms.json
  def index
    @polyndroms = Polyndrom.all
  end

  # GET /polyndroms/1 or /polyndroms/1.json
  def show
  end

  # GET /polyndroms/new
  def new
    @polyndrom = Polyndrom.new
  end

  # GET /polyndroms/1/edit
  def edit
  end

  # POST /polyndroms or /polyndroms.json
  def create
    @polyndrom = Polyndrom.new(polyndrom_params)

    respond_to do |format|
      if @polyndrom.save
        format.html { redirect_to @polyndrom, notice: "Polyndrom was successfully created." }
        format.json { render :show, status: :created, location: @polyndrom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @polyndrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polyndroms/1 or /polyndroms/1.json
  def update
    respond_to do |format|
      if @polyndrom.update(polyndrom_params)
        format.html { redirect_to @polyndrom, notice: "Polyndrom was successfully updated." }
        format.json { render :show, status: :ok, location: @polyndrom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @polyndrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polyndroms/1 or /polyndroms/1.json
  def destroy
    @polyndrom.destroy
    respond_to do |format|
      format.html { redirect_to polyndroms_url, notice: "Polyndrom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polyndrom
      @polyndrom = Polyndrom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def polyndrom_params
      params.require(:polyndrom).permit(:index, :num, :rev, :theory)
    end
end
