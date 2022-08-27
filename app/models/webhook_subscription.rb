class WebhookSubscription < ApplicationRecord
  belongs_to :company
  validates :url, presence: true, 
    :format => { :with => URI::regexp(%w(http https)), :message => "Valid URL required"}
  validates :event_name, presence: true, uniqueness: { scope: :company }
end
