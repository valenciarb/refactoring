class Respuesta < ActiveRecord::Base
  def prepara_para_editar!(con_editor_html)
    self.texto_completo = autolinka_texto_formateado(texto_completo) if con_editor_html and !viene_con_parrafos_del_editor_html
  end
end
