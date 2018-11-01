# frozen_string_literal: true

class OrganizationWebhook < ApplicationRecord
  has_many :organizations

  validates :github_webhook_id, unique: true
end
