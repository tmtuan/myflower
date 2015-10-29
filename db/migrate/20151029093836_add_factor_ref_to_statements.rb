class AddFactorRefToStatements < ActiveRecord::Migration
  def change
    add_reference :statements, :factor, index: true, foreign_key: true
  end
end
