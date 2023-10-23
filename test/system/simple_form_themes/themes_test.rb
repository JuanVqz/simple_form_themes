require "application_system_test_case"

module SimpleFormThemes
  class ThemesTest < ApplicationSystemTestCase
    setup do
      @theme = simple_form_themes_themes(:one)
    end

    test "visiting the index" do
      visit themes_url
      assert_selector "h1", text: "Themes"
    end

    test "should create theme" do
      visit themes_url
      click_on "New theme"

      fill_in "Authors", with: @theme.authors
      fill_in "Description", with: @theme.description
      fill_in "Downloads", with: @theme.downloads
      fill_in "Last commit", with: @theme.last_commit
      fill_in "Name", with: @theme.name
      fill_in "Platform", with: @theme.platform
      fill_in "Released", with: @theme.released
      fill_in "Repository", with: @theme.repository
      fill_in "Website", with: @theme.website
      click_on "Create Theme"

      assert_text "Theme was successfully created"
      click_on "Back"
    end

    test "should update Theme" do
      visit theme_url(@theme)
      click_on "Edit this theme", match: :first

      fill_in "Authors", with: @theme.authors
      fill_in "Description", with: @theme.description
      fill_in "Downloads", with: @theme.downloads
      fill_in "Last commit", with: @theme.last_commit
      fill_in "Name", with: @theme.name
      fill_in "Platform", with: @theme.platform
      fill_in "Released", with: @theme.released
      fill_in "Repository", with: @theme.repository
      fill_in "Website", with: @theme.website
      click_on "Update Theme"

      assert_text "Theme was successfully updated"
      click_on "Back"
    end

    test "should destroy Theme" do
      visit theme_url(@theme)
      click_on "Destroy this theme", match: :first

      assert_text "Theme was successfully destroyed"
    end
  end
end
