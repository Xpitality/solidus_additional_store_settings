module Spree::StoreDecorator
  has_many :additional_store_settings, dependent: :destroy, class_name: "Spree::AdditionalStoreSetting"

  Spree::Store.prepend.self
end
