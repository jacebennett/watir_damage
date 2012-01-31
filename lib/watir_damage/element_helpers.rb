require 'watir_damage/element_helpers/textbox'
require 'watir_damage/element_helpers/password'
require 'watir_damage/element_helpers/checkbox'
require 'watir_damage/element_helpers/button'

module WatirDamage
  module ElementHelpers
    def self.extended(obj)
      obj.extend Textbox
      obj.extend Password
      obj.extend Checkbox
      obj.extend Button
    end
  end
end