class Admin::ItemsController < Admin::ApplicationController

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update_attributes(params[:item])
      @item.set_tags parse_tags(params[:tags])

      redirect_to items_path, notice: t(:item_updated)
    else
      render action: "edit"
    end
  end

private
  def parse_tags(tags_str)
    tags_str.split(',').map{|t| t.strip}
  end
end
