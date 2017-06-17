class BloqueadasController < ApplicationController
  before_action :set_bloqueada, only: [:show, :edit, :update, :destroy]

  # GET /bloqueadas
  # GET /bloqueadas.json
  def index
    @bloqueadas = Bloqueada.all.order('id DESC')
  end

  # GET /bloqueadas/1
  # GET /bloqueadas/1.json
  def show
  end

  # GET /bloqueadas/new
  def new
    @bloqueada = Bloqueada.new
  end

  # GET /bloqueadas/1/edit
  def edit
  end

  # POST /bloqueadas
  # POST /bloqueadas.json
  def create
    @bloqueada = Bloqueada.new(bloqueada_params)

    respond_to do |format|
      if @bloqueada.save
        format.html { redirect_to :back, notice: '' }
        format.json { render :show, status: :created, location: @bloqueada }
      else
        format.html { render :new }
        format.json { render json: @bloqueada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloqueadas/1
  # PATCH/PUT /bloqueadas/1.json
  def update
    respond_to do |format|
      if @bloqueada.update(bloqueada_params)
        format.html { redirect_to @bloqueada, notice: '' }
        format.json { render :show, status: :ok, location: @bloqueada }
      else
        format.html { render :edit }
        format.json { render json: @bloqueada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloqueadas/1
  # DELETE /bloqueadas/1.json
  def destroy
    @bloqueada.destroy
    respond_to do |format|
      format.html { redirect_to bloqueadas_url, notice: 'La página ha sido desbloqueada satisfactoriamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloqueada
      @bloqueada = Bloqueada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bloqueada_params
      params.require(:bloqueada).permit(:url)
    end
end
