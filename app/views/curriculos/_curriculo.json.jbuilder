json.extract! curriculo, :id, :idiomas, :formacao, :conhecimentos, :outros, :aluno_id, :created_at, :updated_at
json.url curriculo_url(curriculo, format: :json)
