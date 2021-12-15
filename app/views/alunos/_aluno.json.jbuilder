json.extract! aluno, :id, :nome, :telefone, :email, :curso, :cidade, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
