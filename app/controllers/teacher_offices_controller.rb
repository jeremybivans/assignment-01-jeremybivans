class TeacherOfficesController < ApplicationController
  before_action :set_teacher_office, only: %i[ show edit update destroy ]

  # GET /teacher_offices or /teacher_offices.json
  def index
    @teacher_offices = TeacherOffice.all
  end

  # GET /teacher_offices/1 or /teacher_offices/1.json
  def show
  end

  # GET /teacher_offices/new
  def new
    @teacher_office = TeacherOffice.new
  end

  # GET /teacher_offices/1/edit
  def edit
  end

  # POST /teacher_offices or /teacher_offices.json
  def create
    @teacher_office = TeacherOffice.new(teacher_office_params)

    respond_to do |format|
      if @teacher_office.save
        format.html { redirect_to @teacher_office, notice: "Teacher office was successfully created." }
        format.json { render :show, status: :created, location: @teacher_office }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teacher_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_offices/1 or /teacher_offices/1.json
  def update
    respond_to do |format|
      if @teacher_office.update(teacher_office_params)
        format.html { redirect_to @teacher_office, notice: "Teacher office was successfully updated." }
        format.json { render :show, status: :ok, location: @teacher_office }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teacher_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_offices/1 or /teacher_offices/1.json
  def destroy
    @teacher_office.destroy
    respond_to do |format|
      format.html { redirect_to teacher_offices_url, notice: "Teacher office was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_office
      @teacher_office = TeacherOffice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_office_params
      params.require(:teacher_office).permit(:building_name, :room_number, :floor_number)
    end
end
