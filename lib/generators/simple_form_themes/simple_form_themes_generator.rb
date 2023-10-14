class SimpleFormThemesGenerator < Rails::Generators::NamedBase
  desc "Add a simple form theme into your project..."

  source_root File.expand_path("templates", __dir__)

  def copy_theme
    template "config/initializers/simple_form_#{file_name}.rb"
  end
end
