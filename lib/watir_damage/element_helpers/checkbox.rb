module WatirDamage
  module ElementHelpers
    module Checkbox

      def checkbox name, opts = {}
        define_method "#{name}_set?" do
          @browser.checkbox(:name, name.to_s).when_present.value
        end
        alias_method "#{name}_checked?", "#{name}_set?"

        define_method "set_#{name}" do
          @browser.checkbox(:name, name.to_s).when_present.set
        end
        alias_method("check_#{name}", "set_#{name}")

        define_method "clear_#{name}" do
          @browser.checkbox(:name, name.to_s).when_present.clear
        end
        alias_method("uncheck_#{name}", "clear_#{name}")

      end

    end
  end
end