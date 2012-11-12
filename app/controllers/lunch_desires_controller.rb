class LunchDesiresController < ApplicationController
  # GET /lunch_desires
  # GET /lunch_desires.json
  def index
    @lunch_desires = LunchDesire.all
    @lunch_desire = LunchDesire.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lunch_desires }
    end
  end

  # GET /lunch_desires/1
  # GET /lunch_desires/1.json
  def show
    @lunch_desire = LunchDesire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lunch_desire }
    end
  end

  # GET /lunch_desires/new
  # GET /lunch_desires/new.json
  def new
    @lunch_desire = LunchDesire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lunch_desire }
    end
  end

  # GET /lunch_desires/1/edit
  def edit
    @lunch_desire = LunchDesire.find(params[:id])
  end

  # POST /lunch_desires
  # POST /lunch_desires.json
  def create
    @lunch_desire = LunchDesire.new(params[:lunch_desire])

    respond_to do |format|
      if @lunch_desire.save
        format.html { redirect_to '/', notice: 'Lunch desire was successfully created.' }
        format.json { render json: @lunch_desire, status: :created, location: @lunch_desire }
      else
        format.html { render action: "new" }
        format.json { render json: @lunch_desire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lunch_desires/1
  # PUT /lunch_desires/1.json
  def update
    @lunch_desire = LunchDesire.find(params[:id])

    respond_to do |format|
      if @lunch_desire.update_attributes(params[:lunch_desire])
        format.html { redirect_to @lunch_desire, notice: 'Lunch desire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lunch_desire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lunch_desires/1
  # DELETE /lunch_desires/1.json
  def destroy
    @lunch_desire = LunchDesire.find(params[:id])
    @lunch_desire.destroy

    respond_to do |format|
      format.html { redirect_to lunch_desires_url }
      format.json { head :no_content }
    end
  end
end
