class Api::KeywordsController < ApplicationController
  before_action :set_api_keyword, only: [:show, :edit, :update, :destroy]

  # GET /api/keywords
  # GET /api/keywords.json
  def index
    @keywords = Keyword.all
  end

  # GET /api/keywords/1
  # GET /api/keywords/1.json
  def show
  end

  # GET /api/keywords/new
  def new
    @keyword = Keyword.new
  end

  # GET /api/keywords/1/edit
  def edit
  end

  # POST /api/keywords
  # POST /api/keywords.json
  def create
    @keyword = Keyword.new(api_keyword_params)

    respond_to do |format|
      if @api_keyword.save
        format.html { redirect_to @api_keyword, notice: 'Keyword was successfully created.' }
        format.json { render action: 'show', status: :created, location: @api_keyword }
      else
        format.html { render action: 'new' }
        format.json { render json: @api_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/keywords/1
  # PATCH/PUT /api/keywords/1.json
  def update
    respond_to do |format|
      if @api_keyword.update(api_keyword_params)
        format.html { redirect_to @api_keyword, notice: 'Keyword was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @api_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/keywords/1
  # DELETE /api/keywords/1.json
  def destroy
    @api_keyword.destroy
    respond_to do |format|
      format.html { redirect_to api_keywords_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_keyword
      @api_keyword = Api::Keyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_keyword_params
      params[:api_keyword]
    end
end
