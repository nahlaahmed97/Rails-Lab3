class AddRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :user, foreign_key: true, on_delete: :cascade
    add_reference :comments, :post, foreign_key: true, on_delete: :cascade 
  end
end
