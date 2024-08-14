class ClientsController < ApplicationController
    
    def index
      @clients = Client.all
      render json: @clients 
    end

    def show 
        @client = Client.find(params[:id])
        render json: { error: 'Client not found' }, status: :not_found    
    end
   
 def create
    @client=Client.new(client_params)
      if @client.save
        render json: { message: 'Atualizado' }
      else
        render json: @client.errors, status: 400
      end
 end

def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
        render json: @client , status: 200
    else
        render json: @client.errors, status:400
    end
 end

def destroy
    @client = Client.find(params[:id])
    @client.destroy
    render json: {
        message: "Client deleted successfully"  # or a translated message  # depending on your application's i18n setup.
    }, status: 400

end

    private 
    def client_params
        params.require(:client).permit(:name,:phone,:cpf)
    end

end