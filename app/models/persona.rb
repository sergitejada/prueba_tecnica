class Persona < ApplicationRecord
  has_many :creador, class_name: "Comunicado", foreign_key: "creador_id"
  has_many :receptor, class_name: "Comunicado", foreign_key: "receptor_id"

  scope :adultos, -> { where('fecha_nacimiento <= ?', 18.years.ago) }

end
