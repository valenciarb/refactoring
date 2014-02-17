class Respuesta < ActiveRecord::Base
  def prepara_para_editar!
    self.texto_completo = autolinka_texto_formateado(texto_completo) unless viene_con_parrafos_del_editor_html
  end
end
