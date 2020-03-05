require_dependency "app_component/application_controller"

module AppComponent
  class SgamesController < ApplicationController
    before_action :set_sgame, only: [:show, :edit, :update, :destroy]

    # GET /sgames
    def index
      @sgames = Sgame.all
    end

    # GET /sgames/1
    def show
    end

    # GET /sgames/new
    def new
      @sgame = Sgame.new
    end

    # GET /sgames/1/edit
    def edit
    end

    # POST /sgames
    def create
      @sgame = Sgame.new(sgame_params)

      if @sgame.save
        redirect_to @sgame, notice: 'Sgame was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /sgames/1
    def update
      if @sgame.update(sgame_params)
        redirect_to @sgame, notice: 'Sgame was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /sgames/1
    def destroy
      @sgame.destroy
      redirect_to sgames_url, notice: 'Sgame was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_sgame
        @sgame = Sgame.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def sgame_params
        params.require(:sgame).permit(:date, :location, :first_team_id, :second_team_id, :winning_team, :first_team_score, :second_team_score)
      end
  end
end
