require "test_helper"
require "generators/simple_form_themes/simple_form_themes_generator"

module SimpleFormThemes
  class SimpleFormThemesGeneratorTest < Rails::Generators::TestCase
    tests SimpleFormThemesGenerator
    destination Rails.root.join("tmp/generators")
    setup :prepare_destination

    test "generator runs without errors" do
      assert_nothing_raised do
        run_generator ["tailwindcss"]
      end
    end

    test "generate tailwindcss initializer" do
      run_generator %w(tailwindcss)

      assert_file "config/initializers/simple_form_tailwindcss.rb",
        /config.default_wrapper = :vertical_form/
    end

    test "generate tailwindcss local file" do
      run_generator %w(tailwindcss)

      assert_file "config/locales/simple_form_tailwindcss.en.yml", /text-red-500/
    end
  end
end
