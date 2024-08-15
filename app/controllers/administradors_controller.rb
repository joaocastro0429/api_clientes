class AdministradorsController < ApplicationController
  before_action :set_administrador, only: %i[ show update destroy ]
   def login
    @administrador=Administrador.where(email:params[:email],
    password:params[:password]).first
   return  render :show if @administrador.present?
    render json: {error:"login ou senha invalida"}, status: 401
   end
  # GET /administradors
  # GET /administradors.json
  def index
    @administradors = Administrador.all
  end

  # GET /administradors/1
  # GET /administradors/1.json
  def show
  end

  # POST /administradors
  # POST /administradors.json
  def create
    @administrador = Administrador.new(administrador_params)

    if @administrador.save
      render :show, status: :created, location: @administrador
    else
      render json: @administrador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /administradors/1
  # PATCH/PUT /administradors/1.json
  def update
    if @administrador.update(administrador_params)
      render :show, status: :ok, location: @administrador
    else
      render json: @administrador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /administradors/1
  # DELETE /administradors/1.json
  def destroy
    @administrador.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrador
      @administrador = Administrador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def administrador_params
      params.require(:administrador).permit(:name, :email, :password)
    end
end
