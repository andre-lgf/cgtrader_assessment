class CreateSampleData < ActiveRecord::Migration[7.0]
  def change
    create_table :sample_data do |t|
      t.text :prompt

      t.timestamps
    end
  end
end
