class CreateAlunos < ActiveRecord::Migration[6.1]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :curso
      t.string :cidade

      t.timestamps
    end
  end
end
