require "test_helper"

module SimpleFormThemes
  class ThemeTest < ActiveSupport::TestCase
    test "valid" do
      assert Theme.new(name: "Tailwind CSS").valid?
    end
  end
end
