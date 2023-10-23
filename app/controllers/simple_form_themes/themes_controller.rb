module SimpleFormThemes
  class ThemesController < ApplicationController
    layout :set_layout, only: %i(new)
    before_action :set_theme, only: %i[ show edit update destroy ]

    # GET /themes
    def index
      @themes = Theme.all
    end

    # GET /themes/1
    def show
    end

    # GET /themes/new
    def new
      @theme = Theme.new
    end

    # GET /themes/1/edit
    def edit
    end

    # POST /themes
    def create
      @theme = Theme.new(theme_params)

      if @theme.save
        redirect_to @theme, notice: "Theme was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /themes/1
    def update
      if @theme.update(theme_params)
        redirect_to @theme, notice: "Theme was successfully updated.", status: :see_other
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /themes/1
    def destroy
      @theme.destroy!
      redirect_to themes_url, notice: "Theme was successfully destroyed.", status: :see_other
    end

    private

    def set_theme
      @theme = Theme.find(params[:id])
    end

    def theme_params
      params.require(:theme)
        .permit(:name, :description, :repository, :website, :authors,
                :released, :last_commit, :platform, :downloads)
    end

    def set_layout
      "simple_form_themes/#{params[:theme]}" if params[:theme]
    end
  end
end
