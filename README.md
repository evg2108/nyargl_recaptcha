# NyarglRecaptcha

NyarglRecaptcha is a simple gem for integration Google reCAPTCHA v2.0 to your projects

# installation

Add it to your Gemfile:

```ruby
gem 'nyargl_recaptcha'
```

Run the following command to install it:

```console
bundle install
```

and that's all

## Usage

1. NyarglRecaptcha uses Google reCAPTCHA API, and first what you need to do is a go to (https://www.google.com/recaptcha), click button "Get reCAPTCHA" and follow the instructions. As result, you will get public key and private key. NyarglRecaptcha uses `ENV['RECAPTCHA_SITEKEY']` for get public site key, and `ENV['RECAPTCHA_PRIVATE_KEY']` for get private key. You need some way to pass the keys in the server options:

    ```console
        RECAPTCHA_SITEKEY=<public_key> RECAPTCHA_PRIVATE_KEY=<private_key> rails s
    ```

2. add to your form div block with some identifier, like class or id attributes (by default it's a class **g-recaptcha**):

    ```erb
    <%= form_tag do %>
        <div class="g-recaptcha"></div>
    <% end %>
    ```

3. add to head section of your html document call the following helper method:

    ```erb
    <html>
        <head>
            ...
            <%= include_recaptcha_scripts %>
            ...
        </head>
        <body>
            ...
        </body>
    </html>
    ```

    **Note:** if you want to use div block with non-default identifier, then you must pass suitable css as argument for call `include_recaptcha_scripts`, for example:

    ```erb
        <%= include_recaptcha_scripts('#my_recaptcha.my_class') %>
        ...
        <%= form_tag do %>
            <div id="my_recaptcha" class="my_class"></div>
        <% end %>
    ```

4. for verifying captcha result, add call `verify_recaptcha` to action form processing in controller:
    
    ```ruby
        class MyController < ActionController::Base
            def update
                is_catcha_valid = verify_recaptcha
            end
        end
    ```
    
    this method returns `true` if captcha is valid, otherwise it returns `false`

## License
This project rocks and uses [MIT-LICENSE](/MIT-LICENSE).