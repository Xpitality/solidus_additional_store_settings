module Spree
  class AdditionalStoreSetting < ActiveRecord::Base
    belongs_to :store, class_name: 'Spree::Store'
    validates :label, presence: true, uniqueness: {scope: :store_id}

    class << self
      def find_by_label(label)
        where(label: label).first
      end
    end
  end
end
