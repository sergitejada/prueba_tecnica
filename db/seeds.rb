persona1 = Persona.create(nombre: 'Juan', fecha_nacimiento: "01-01-2000")
persona2 = Persona.create(nombre: 'Sofia', fecha_nacimiento: "05-06-2000")
persona3 = Persona.create(nombre: 'Guillermo', fecha_nacimiento: "05-06-2010")

comunicado1 = Comunicado.create(creador: persona1, receptor: persona2, asunto: "Comunicado-1", contenido: "Hola")
Comunicado.create(creador: persona2, receptor: persona1, asunto: "Comunicado-2", contenido: "Que tal?", comunicado_anterior: comunicado1)

comunicado2 = Comunicado.create(creador: persona3, receptor: persona1, asunto: "Comunicado-3", contenido: "Buenas soy guillermo")
Comunicado.create(creador: persona1, receptor: persona3, asunto: "Comunicado-4", contenido: "Yo Juan", comunicado_anterior: comunicado2)


Adjunto.create(comunicado: comunicado1)
Adjunto.create(comunicado: comunicado1)
Adjunto.create(comunicado: comunicado1)