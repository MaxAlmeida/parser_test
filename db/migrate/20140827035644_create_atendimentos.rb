class CreateAtendimentos < ActiveRecord::Migration
  def change
    create_table :atendimentos do |t|
      t.integer :AnoAtendimento
      t.integer :TrimestreAtendimento
      t.integer :MesAtendimento
      t.date :DataAtendimento
      t.integer :CodigoRegiao
      t.string :Regiao
      t.string :UF
      t.integer :CodigoTipoAtendimento
      t.string :DescricaoTipoAtendimento
      t.integer :CodigoAssunto
      t.string :DescricaoAssunto
      t.string :GrupoAssunto
      t.integer :CodigoProblema
      t.string :DescricaoProblema
      t.string :GrupoProblema
      t.string :SexoConsumidor
      t.string :FaixaEtariaConsumidor
      t.integer :CEPConsumidor

      t.timestamps
    end
  end
end
