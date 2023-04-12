class ChangeMeasuresToStrings < ActiveRecord::Migration[7.0]
  def change
    change_column :cocktails, :strMeasure1, :string
    change_column :cocktails, :strMeasure2, :string
    change_column :cocktails, :strMeasure3, :string
    change_column :cocktails, :strMeasure4, :string
    change_column :cocktails, :strMeasure5, :string
    change_column :cocktails, :strMeasure6, :string
    change_column :cocktails, :strMeasure7, :string
    change_column :cocktails, :strMeasure8, :string
    change_column :cocktails, :strMeasure9, :string
    change_column :cocktails, :strMeasure10, :string
  end
end
