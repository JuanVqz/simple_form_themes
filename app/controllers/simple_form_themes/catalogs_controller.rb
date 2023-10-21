module SimpleFormThemes
  class CatalogsController < ApplicationController
    before_action :set_catalog, only: %i[ show edit update destroy ]

    # GET /catalogs
    def index
      @catalogs = Catalog.all
    end

    # GET /catalogs/1
    def show
    end

    # GET /catalogs/new
    def new
      @catalog = Catalog.new
    end

    # GET /catalogs/1/edit
    def edit
    end

    # POST /catalogs
    def create
      @catalog = Catalog.new(catalog_params)

      if @catalog.save
        redirect_to @catalog, notice: "Catalog was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /catalogs/1
    def update
      if @catalog.update(catalog_params)
        redirect_to @catalog, notice: "Catalog was successfully updated.", status: :see_other
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /catalogs/1
    def destroy
      @catalog.destroy!
      redirect_to catalogs_url, notice: "Catalog was successfully destroyed.", status: :see_other
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_catalog
        @catalog = Catalog.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def catalog_params
        params.require(:catalog).permit(:name, :description, :active, :scope, :year, :expires_at, :color)
      end
  end
end
