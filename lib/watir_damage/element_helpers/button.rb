module WatirDamage
  module ElementHelpers
    module Button

      def button name, opts = {}
        define_method "click_#{name}" do
          if opts[:id]
            button = @browser.button(:id, opts[:id])
          else
            button = @browser.button(:name, "#{name}")
          end

          button.when_present.click
          if(opts[:navigates_to])
            opts[:navigates_to].new @browser
          end
        end

        if(opts[:navigates_to])
          define_method "click_#{name}_expecting_failure" do
            if opts[:id]
              button = @browser.button(:id, opts[:id])
            else
              button = @browser.button(:name, "#{name}")
            end
            
            button.when_present.click
            self.class.new @browser
          end
        end

      end

    end
  end
end