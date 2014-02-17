class RespuestasController < ApplicationController
  def edit
    #...
    @respuesta.prepara_para_editar!(@yo.con_editor_html?)
    #...
  end
end
