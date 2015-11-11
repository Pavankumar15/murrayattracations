class AttractionsController < ApplicationController
  def index
    if params[:search_form]
       search = params[:search_form]
       @attractions = Attraction.where('name like ?', "%#{search}%")
    else
      @attractions = Attraction.all
    end
  end

  def new
      @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    if @attraction.save
      flash[:notice] = "#{@attraction.name} was successfully created."
      redirect_to attractions_path
    else
      render 'new'
       flash[:notice] = "Cannot be created."
    end 
  end

  def attraction_params
    params.require(:attraction).permit(:name, :description, :rating, :entry, :web)
  end
  
  def update
    @attraction = Attraction.find params[:id]
    @attraction.update_attributes(attraction_params)
    if @attraction.save
      flash[:notice] = "#{@attraction.name} was successfully updated"
      redirect_to attraction_path(@attraction)
    else
      render 'edit'
      flash[:notice] = "Cannot be updated"
    end  
  end

  def edit
       @attraction = Attraction.find params[:id]
  end

  def show
      id = params[:id]
      @attraction = Attraction.find(id)
  end
  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy
    flash[:notice] = "Attraction '#{@attraction.name}' was successfully deleted."
    redirect_to attractions_path
  end
  
  def homePage
  end
end
