module WatirDamage
  module ElementHelpers
    module Textbox

      def textbox name, opts = {}
        define_method "#{name}" do
          @browser.text_field(:name, name.to_s).when_present.value
        end

        define_method "#{name}=" do |val|
          @browser.text_field(:name, name.to_s).when_present.set(val)
        end
      end
      

    end
  end
end