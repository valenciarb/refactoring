class RespuestasController < ApplicationController
  def edit
    #...
    @respuesta.prepara_para_editar! if @yo.con_editor_html?
    #...
  end
end
