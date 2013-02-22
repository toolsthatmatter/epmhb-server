class SnippetsController < ApplicationController

  protect_from_forgery :except => :create

  # GET /snippets
  # GET /snippets.json
  def index
    @snippets = Snippet.order("post_date DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @snippets }
    end
  end

  # POST /snippets.json
  def create
    @snippet = Snippet.new(snippet_params)

    respond_to do |format|
      if @snippet.save
        format.json { render json: @snippet, status: :created, location: @snippet }
      else
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def snippet_params
      params.require(:snippet).permit(:post, :post_date)
    end
end
