class RenameMsgToBodyInMessage < ActiveRecord::Migration[5.0]
  def change
    rename_column :messages, :msg, :body
  end
end
