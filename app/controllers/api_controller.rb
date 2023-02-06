class ApiController < ApplicationController
  #Todas las personas mañores de 18 años, con sus comunicados y sus adjuntos
  def comunicados_manor_edad
    @personas = Persona.includes(creador: [:adjuntos]).adultos
    render json: @personas.to_json(include: {creador: { include: :adjuntos, methods: :count_adjuntos}})
  end
end
