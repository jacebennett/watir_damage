module WatirDamage
  module ElementHelpers
    module Checkbox

      def checkbox name, opts = {}
        define_method "#{name}_set?" do
          @browser.checkbox(:name, name.to_s).when_present.value
        end
        alias_method "#{name}_checked?"

        define_method "set_#{name}" do
          @browser.checkbox(:name, name.to_s).when_present.set
        end
        alias_method("check_#{name}", "set_#{name}")

        define_method "clear_#{name}" do
          @browser.checkbox(:name, name.to_s).when_present.clear
        end
        alias_method("uncheck_#{name}", "clear_#{name}")

        define_method "toggle_#{name}" do
          val = @browser.checkbox(:name, name.to_s).when_present.value
          val ? send ("clear_#{name}".to_sym) : send ("set_#{name}".to_sym)
        end

      end

    end
  end
end