# frozen_string_literal: true

class GroupingIndex < Chewy::Index
  define_type Grouping.includes(:classroom) do
    field :title
    field :created_at
    field :updated_at

    field :organization_login, value: ->(grouping) { grouping&.classroom&.github_organization&.login }
  end
end
