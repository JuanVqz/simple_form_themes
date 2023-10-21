require "test_helper"

module SimpleFormThemes
  class CatalogsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @catalog = simple_form_themes_catalogs(:one)
    end

    test "should get index" do
      get catalogs_url
      assert_response :success
    end

    test "should get new" do
      get new_catalog_url
      assert_response :success
    end

    test "should create catalog" do
      assert_difference("Catalog.count") do
        post catalogs_url, params: { catalog: { active: @catalog.active, color: @catalog.color, description: @catalog.description, expires_at: @catalog.expires_at, name: @catalog.name, scope: @catalog.scope, year: @catalog.year } }
      end

      assert_redirected_to catalog_url(Catalog.last)
    end

    test "should show catalog" do
      get catalog_url(@catalog)
      assert_response :success
    end

    test "should get edit" do
      get edit_catalog_url(@catalog)
      assert_response :success
    end

    test "should update catalog" do
      patch catalog_url(@catalog), params: { catalog: { active: @catalog.active, color: @catalog.color, description: @catalog.description, expires_at: @catalog.expires_at, name: @catalog.name, scope: @catalog.scope, year: @catalog.year } }
      assert_redirected_to catalog_url(@catalog)
    end

    test "should destroy catalog" do
      assert_difference("Catalog.count", -1) do
        delete catalog_url(@catalog)
      end

      assert_redirected_to catalogs_url
    end
  end
end
