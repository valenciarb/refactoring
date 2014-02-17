Ejemplo

El código de este controlador estaba duplicado en un par de controllers. Y empiezo sugiriendo que se pase toda la lógica al modelo.

Al final, toda la lógica del modelo se queda en el modelo, y es el
controlador por ahora quién se encarga de del if @yo (Usuario).
