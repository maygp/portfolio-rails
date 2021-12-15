class ExperienciaController < ApplicationController
  before_action :set_experiencium, only: %i[ show edit update destroy ]

  # GET /experiencia or /experiencia.json
  def index
    @experiencia = Experiencium.all
  end

  # GET /experiencia/1 or /experiencia/1.json
  def show
  end

  # GET /experiencia/new
  def new
    @experiencium = Experiencium.new
  end

  # GET /experiencia/1/edit
  def edit
  end

  # POST /experiencia or /experiencia.json
  def create
    @experiencium = Experiencium.new(experiencium_params)

    respond_to do |format|
      if @experiencium.save
        format.html { redirect_to @experiencium, notice: "Experiencium was successfully created." }
        format.json { render :show, status: :created, location: @experiencium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @experiencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiencia/1 or /experiencia/1.json
  def update
    respond_to do |format|
      if @experiencium.update(experiencium_params)
        format.html { redirect_to @experiencium, notice: "Experiencium was successfully updated." }
        format.json { render :show, status: :ok, location: @experiencium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @experiencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiencia/1 or /experiencia/1.json
  def destroy
    @experiencium.destroy
    respond_to do |format|
      format.html { redirect_to experiencia_url, notice: "Experiencium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experiencium
      @experiencium = Experiencium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def experiencium_params
      params.require(:experiencium).permit(:empresa, :cargo, :descricao, :dataInicio, :dataFim, :curriculo_id, :aluno_id)
    end
end
