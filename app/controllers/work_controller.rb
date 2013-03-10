class WorkController < ApplicationController
  
  def generate
    
    @datos = Live.new(params[:live])
    @serverlive=""
    
    respond_to do |format|
      if @datos.save
        flash[:notice] = ""
        flash[:status] = "Guardado!"
        require "net/http"
        require "uri"  
        uri = URI.parse("http://127.0.0.1:8000/create.php")
        parametros={'arch'=>@datos.arch,'distro'=>@datos.distro,'desktop'=>@datos.desktop,'di'=>@datos.di,'filesystem'=>@datos.filesystem,'nombreiso'=>@datos.nombreiso,'repoextra'=>@datos.repoextra,'area'=>@datos.area}
        response= Net::HTTP.post_form(uri,parametros)
        if response != nil
          if response.class.name=="Net::HTTPOK"
            flash[:notice] = "Enviado satisfactoriamente!"
            @serverlive=response.body
          end  
        else
          @serverlive= "Error en el envio de procesamiento de generación de live"
        end
        
        format.html 
        format.json { render json: @datos, status: :created, location: @datos }

      else
        flash[:errors] = @datos.errors.to_a
        format.html { redirect_to :controller => "lihuen",  :action => "home" }
        format.json { render json: @datos.errors, status: :unprocessable_entity }
      end
    end

     
    #respond_to do |format|
    #  format.html # generate.html.erb
    #  format.json { render json: @datos }
    #end
    
  end
end
