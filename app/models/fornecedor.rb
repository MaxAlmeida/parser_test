class Fornecedor < ActiveRecord::Base
  attr_accessible :cnpj, :descricao_cnaep_principal, :nome_fantasia, :razao_social_sindec, :tipo_fornecedor
end
