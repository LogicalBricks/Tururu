class ItemsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @items = Item.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @items } 
    end
  end

  def new
    @item = Item.new
    
    respond_to do |format|
      format.html
      format.json { render :json=>@item } 
    end
  end

  def edit
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json=>@item } 
    end
  end

  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to(@item, :notice => 'Elemento creado correctamente')} 
        format.json { render :json => {}, :status => :ok }
      else
        format.html {render :action => 'edit'}
        format.json {render :json => @item.errors, :status => :unprocessable_entity } 
      end
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :ok }
    end
  end

  def create
    @item = Item.new(params[:item])
    @item.user = current_user if user_signed_in?
    respond_to do |format|
      if @item.save
        format.html { redirect_to(@item,:notice=>'Elemento agregado correctamente') }
        format.json { render :json => @item, :status => :created, :location => @item }
      else
        format.html { render :action => :new }
        format.json { render :json => @item.errors, :status => :unprocessable_entity } 
      end
    end 
  end

  def show
   @item = Item.find(params[:id])

   respond_to do |format|
     format.html 
     format.json { render :json => @item} 
   end
  end
end
