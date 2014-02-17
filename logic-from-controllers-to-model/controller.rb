class RespuestasController < ApplicationController
  def edit
    #...
    @respuesta.texto_completo = autolinka_texto_formateado(@respuesta.texto_completo) if @yo.con_editor_html? and !@respuesta.viene_con_parrafos_del_editor_html?
    #...
  end
end
