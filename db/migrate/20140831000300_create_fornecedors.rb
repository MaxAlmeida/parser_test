class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.integer :tipo_fornecedor
      t.string :razao_social_sindec
      t.string :nome_fantasia
      t.string :cnpj
      t.string :descricao_cnaep_principal

      t.timestamps
    end
  end
end
