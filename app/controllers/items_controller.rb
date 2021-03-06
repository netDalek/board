class ItemsController < ApplicationController

  def index
    if params[:keywords].present?
      @items = ItemSearch.search(keywords: params[:keywords], state: 'published').entities
    else
      @items = Item.published
    end
  end

  def show
    @item = Item.find(params[:id])
  end

end
