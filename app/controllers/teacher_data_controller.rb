class TeacherDataController < ApplicationController
  before_action :set_teacher_datum, only: %i[ show edit update destroy ]

  # GET /teacher_data or /teacher_data.json
  def index
    @teacher_data = TeacherDatum.all
  end

  # GET /teacher_data/1 or /teacher_data/1.json
  def show
  end

  # GET /teacher_data/new
  def new
    @teacher_datum = TeacherDatum.new
  end

  # GET /teacher_data/1/edit
  def edit
  end

  # POST /teacher_data or /teacher_data.json
  def create
    @teacher_datum = TeacherDatum.new(teacher_datum_params)

    respond_to do |format|
      if @teacher_datum.save
        format.html { redirect_to @teacher_datum, notice: "Teacher datum was successfully created." }
        format.json { render :show, status: :created, location: @teacher_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_data/1 or /teacher_data/1.json
  def update
    respond_to do |format|
      if @teacher_datum.update(teacher_datum_params)
        format.html { redirect_to @teacher_datum, notice: "Teacher datum was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_data/1 or /teacher_data/1.json
  def destroy
    @teacher_datum.destroy
    respond_to do |format|
      format.html { redirect_to teacher_data_url, notice: "Teacher datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_datum
      @teacher_datum = TeacherDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_datum_params
      params.require(:teacher_datum).permit(:first_name, :last_name, :nine_hundred, :email)
    end
end
