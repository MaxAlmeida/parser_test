class CreateProcons < ActiveRecord::Migration
  def change
    create_table :procons do |t|
      t.string :responsavel
      t.string :cargo
      t.string :endereco
      t.integer :DDD
      t.string :telefone
      t.string :fax
      t.string :email

      t.timestamps
    end
  end
end
