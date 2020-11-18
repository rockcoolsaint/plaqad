module DefaultOrder
  extend ActiveSupport::Concern

  included do
    scope :trashed, -> { where(trashed: true) }
  end
end
