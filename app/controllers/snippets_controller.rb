class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.where(language_id: params[:language_id])
    @language = find_language
  end

  def new
    @snippet = Snippet.new
    @language = find_language
  end

  def create
    @snippet = Snippet.new(snippet_params)
    @snippet.language_id = params[:language_id]
    if @snippet.save
      redirect_to language_snippets_path(params[:language_id])
    else
      render :new
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
    @language = find_language
  end

  def update
    @language = find_language
    snippet = find_snippet_by_language
    if snippet.update(snippet_params)
      redirect_to language_snippets_path(params[:language_id])
    else
      render :edit
    end
  end

  def show
    @language = find_language
    @snippet = find_snippet_by_language
  end

  def destroy
    @language = find_language
    @snippet = find_snippet_by_language
    @snippet.destroy
    redirect_to language_snippets_path(params[:language_id])
  end

  private
  def snippet_params
    params.require(:snippet).permit([:title, :code])
  end

  def find_language
    Language.find(params[:language_id])
  end

  def find_snippet_by_language
    @language.snippets.find(params[:id])
  end
end
