class CreateSendgridLogs < ActiveRecord::Migration
  def change
    create_table :sendgrid_logs do |t|
      t.string :email
      t.string :event_type
      t.datetime :time
      t.string :reason
      t.string :category
      t.string :smtp_id
      t.string :processed_string
      t.string :msg_id

      t.timestamps
    end
  end
end
