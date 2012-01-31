module WatirDamage
  module ElementHelpers
    module Button

      def button name, opts = {}
        define_method "click_#{name}" do
          @browser.button(:name, "#{name}").when_present.click
          if(opts[:navigates_to])
            opts[:navigates_to].new @browser
          end
        end

        if(opts[:navigates_to])
          define_method "click_#{name}_expecting_failure" do
            @browser.button(:name, "#{name}").when_present.click
            self.class.new @browser
          end
        end

      end

    end
  end
end