class CreateWebhookSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :webhook_subscriptions do |t|
      t.references :company, null: false, foreign_key: true
      t.string :url
      t.string :event_name

      t.timestamps
    end
  end
end
