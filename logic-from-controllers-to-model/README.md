## Ejemplo

El código de este controlador estaba duplicado en un par de controllers. Y empiezo sugiriendo que se pase toda la lógica al modelo.

Al final, toda la lógica del modelo se queda en el modelo, y es el
controlador por ahora quién se encarga de del if @yo (Usuario).


## Paso 1:

```ruby
class RespuestasController < ApplicationController
  def edit
    #...
    @respuesta.texto_completo = autolinka_texto_formateado(@respuesta.texto_completo) if @yo.con_editor_html? and !@respuesta.viene_con_parrafos_del_editor_html?
    #...
  end
end
```

## Paso 2:

```ruby
class RespuestasController < ApplicationController
  def edit
    #...
    respuesta.prepara_para_editar!(@yo.con_editor_html?)
    #...
  end
end

 class Respuesta < ActiveRecord::Base
  def prepara_para_editar!(con_editor_html)
    self.texto_completo = autolinka_texto_formateado(texto_completo) if con_editor_html and !viene_con_parrafos_del_editor_html
  end
 end
```

## Paso 3:

```ruby
class RespuestasController < ApplicationController
  def edit
    #...
    @respuesta.prepara_para_editar! if @yo.con_editor_html?
    #...
  end
end

 class Respuesta < ActiveRecord::Base
  def prepara_para_editar!
    self.texto_completo = autolinka_texto_formateado(texto_completo) unless viene_con_parrafos_del_editor_html
   end
  end
 end
```
