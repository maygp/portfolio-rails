class CreateExperiencia < ActiveRecord::Migration[6.1]
  def change
    create_table :experiencia do |t|
      t.string :empresa
      t.string :cargo
      t.string :descricao
      t.date :dataInicio
      t.date :dataFim
      t.references :curriculo, null: false, foreign_key: true
      t.references :aluno, null: false, foreign_key: true

      t.timestamps
    end
  end
end
