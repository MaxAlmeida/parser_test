#encoding: utf-8
class Procon < ActiveRecord::Base
  attr_accessible :DDD, :cargo, :email, :endereco, :fax, :responsavel, :telefone
def self.import(file)
    CSV.foreach(file.path, col_sep: ',', headers: true, encoding: "iso-8859-1:UTF-8") do |row|
      Procon.create! :DDD => row[7], :cargo => row[5],
      :email => row[12], :endereco => row[6], :fax => row[10], 
      :responsavel => row[4], :telefone => row[8]

      #{:AnoAtendimento => row[0], :TrimestreAtendimento => row[1]}
    end
  end

end
