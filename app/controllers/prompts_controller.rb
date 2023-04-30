class PromptsController < ApplicationController
  def index
    collection = fetch_records
    if collection.any?
      @pagy, @prompts = pagy_searchkick(collection, items: 25)
    else
      @prompts = collection
    end
  end

  private
  def fetch_records = params[:query].blank? ? SampleData.none : SampleData.pagy_search(query, **options)
  def query = params[:query].blank? ? '*' : params[:query]
  def options
    opts = {}
    opts.merge!({match: :phrase}) if params[:match_phrase].eql?('yes')
    opts.merge!({operator: params[:operator]}) if params[:operator]
    opts
  end
end
