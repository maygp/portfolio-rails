class CreateCurriculos < ActiveRecord::Migration[6.1]
  def change
    create_table :curriculos do |t|
      t.string :idiomas
      t.string :formacao
      t.string :conhecimentos
      t.string :outros
      t.references :aluno, null: false, foreign_key: true

      t.timestamps
    end
  end
end
