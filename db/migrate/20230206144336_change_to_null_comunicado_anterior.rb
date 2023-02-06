class ChangeToNullComunicadoAnterior < ActiveRecord::Migration[7.0]
  def change
    change_column :comunicados, :comunicado_anterior_id, :bigint, null: true
  end
end
