class LineFoodsController < ApplicationController
  skip_before_filter :authorize, :only => :create
  # GET /line_foods
  # GET /line_foods.json
  def index
    @line_foods = LineFood.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @line_foods }
    end
  end

  # GET /line_foods/1
  # GET /line_foods/1.json
  def show
    @line_food = LineFood.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @line_food }
    end
  end

  # GET /line_foods/new
  # GET /line_foods/new.json
  def new
    @line_food = LineFood.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @line_food }
    end
  end

  # GET /line_foods/1/edit
  def edit
    @line_food = LineFood.find(params[:id])
  end

  # POST /line_foods
  # POST /line_foods.json
  def create
   @cart = current_cart
   food = Food.find(params[:food_id])
   @line_food = @cart.add_food(food.id)

    respond_to do |format|
      if @line_food.save
        format.html { redirect_to @line_food.cart }
        #format.html { redirect_to @line_food, notice: 'Line food was successfully created.' }
        format.json { render json: @line_food, status: :created, location: @line_food }
      else
        format.html { render action: "new" }
        format.json { render json: @line_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /line_foods/1
  # PUT /line_foods/1.json
  def update
    @line_food = LineFood.find(params[:id])

    respond_to do |format|
      if @line_food.update_attributes(params[:line_food])
        format.html { redirect_to @line_food, notice: 'Line food was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @line_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_foods/1
  # DELETE /line_foods/1.json
  def destroy
    @line_food = LineFood.find(params[:id])
    @line_food.destroy

    respond_to do |format|
      format.html { redirect_to line_foods_url }
      format.json { head :no_content }
    end
  end
end
