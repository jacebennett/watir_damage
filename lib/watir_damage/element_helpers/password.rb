module WatirDamage
  module ElementHelpers
    module Password

      def password name, opts = {}
        define_method "#{name}=" do |val|
          @browser.text_field(:name, name.to_s).when_present.set(val)
        end
      end

    end
  end
end