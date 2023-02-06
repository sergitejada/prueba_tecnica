class Comunicado < ApplicationRecord
  belongs_to :creador, class_name: "Persona"
  belongs_to :receptor, class_name: "Persona"

  belongs_to :comunicado_anterior, class_name: "Comunicado", optional: true

  has_many :adjuntos

  def count_adjuntos
    adjuntos.size
  end
end
