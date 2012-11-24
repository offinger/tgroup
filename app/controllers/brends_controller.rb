class BrendsController < ApplicationController
  # GET /brends
  # GET /brends.json
  def index
    @brends = Brend.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brends }
    end
  end

  # GET /brends/1
  # GET /brends/1.json
  def show
    @brend = Brend.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brend }
    end
  end

  # GET /brends/new
  # GET /brends/new.json
  def new
    @brend = Brend.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brend }
    end
  end

  # GET /brends/1/edit
  def edit
    @brend = Brend.find(params[:id])
  end

  # POST /brends
  # POST /brends.json
  def create
    @brend = Brend.new(params[:brend])

    respond_to do |format|
      if @brend.save
        format.html { redirect_to @brend, notice: 'Brend was successfully created.' }
        format.json { render json: @brend, status: :created, location: @brend }
      else
        format.html { render action: "new" }
        format.json { render json: @brend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brends/1
  # PUT /brends/1.json
  def update
    @brend = Brend.find(params[:id])

    respond_to do |format|
      if @brend.update_attributes(params[:brend])
        format.html { redirect_to @brend, notice: 'Brend was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brends/1
  # DELETE /brends/1.json
  def destroy
    @brend = Brend.find(params[:id])
    @brend.destroy

    respond_to do |format|
      format.html { redirect_to brends_url }
      format.json { head :no_content }
    end
  end
end
