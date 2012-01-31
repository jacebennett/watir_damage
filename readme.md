###WatirDamage
Opinion for your page objects

Here's a swag at the kind of thing we're shooting for:

    require 'watir_damage'

    class LoginPage < WatirDamage::Page
        title 'Login - My App'

        textbox :username
        password :password
        checkbox :remember_me
        button :login, :navigates_to => HomePage

        def login_as(user, pass, remember = false)
            setup_form user, pass, remember
            click_login
        end

        def login_failure(user, pass, remember = false)
            setup_form user, pass, remember
            click_login_expecting_failure
        end

        private

        def setup_form(user, pass, remember)
            username = user
            password = pass
            check_remember_me if remember
        end
    end