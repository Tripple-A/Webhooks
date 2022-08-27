class AddUniqueIndexToWebhookSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_index :webhook_subscriptions, [:event_name, :company_id], unique: true
  end
end
