class AddDocumentToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :document, :string
  end
end
