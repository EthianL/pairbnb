class ListingsController < ApplicationController

   def show 
      @listing = Listing.find(params[:id])
   end
   
   def index
      @listing = Listing.all
   end
   
   def new
      @listing = current_user.listings.new
   end

   def create
      @listing = current_user.listings.new(listing_params)
      @listing.user_id = current_user.id
      
   if @listing.save
      
      redirect_to listing_path(current_user)
   end
   end
   
   def find_listing
      @listing = Listing.find(params[:id])
   end
      
   def edit
   end
        
   def update
      if @listing.update(listing_params)
         flash[:success] = "Successfully updated the listing"
         redirect_to @listing
      else
         flash[:danger] = "Error updating list"
         render :edit
      end
   end

private
   def listing_params
   params.require(:listing).permit(:title, :address, :bedroom, :bathroom, :max_guest, :description, :internet, :pet, :smoker, :price, :user_id )
   end
   
   
end
