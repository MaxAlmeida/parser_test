class Atendimento < ActiveRecord::Base
  attr_accessible :AnoAtendimento, :CEPConsumidor, :CodigoAssunto, :CodigoProblema, :CodigoRegiao, :CodigoTipoAtendimento, :DataAtendimento, :DescricaoAssunto, :DescricaoProblema, :DescricaoTipoAtendimento, :FaixaEtariaConsumidor, :GrupoAssunto, :GrupoProblema, :MesAtendimento, :Regiao, :SexoConsumidor, :TrimestreAtendimento, :UF
def self.import(file)
    CSV.foreach(file.path, col_sep: ';', headers: true, encoding: "iso-8859-1:UTF-8") do |row|
      Atendimento.create! :AnoAtendimento => row[0], :DataAtendimento => row[3]

      #{:AnoAtendimento => row[0], :TrimestreAtendimento => row[1]}
    end
  end
end
