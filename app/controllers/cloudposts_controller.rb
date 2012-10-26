class CloudpostsController < ApplicationController
  # GET /cloudposts
  # GET /cloudposts.json
  def index
    @cloudposts = Cloudpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cloudposts }
    end
  end

  # GET /cloudposts/1
  # GET /cloudposts/1.json
  def show
    @cloudpost = Cloudpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cloudpost }
    end
  end

  # GET /cloudposts/new
  # GET /cloudposts/new.json
  def new
    @cloudpost = Cloudpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cloudpost }
    end
  end

  # GET /cloudposts/1/edit
  def edit
    @cloudpost = Cloudpost.find(params[:id])
  end

  # POST /cloudposts
  # POST /cloudposts.json
  def create
    @cloudpost = Cloudpost.new(params[:cloudpost])

    respond_to do |format|
      if @cloudpost.save
        format.html { redirect_to @cloudpost, notice: 'Cloudpost was successfully created.' }
        format.json { render json: @cloudpost, status: :created, location: @cloudpost }
      else
        format.html { render action: "new" }
        format.json { render json: @cloudpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cloudposts/1
  # PUT /cloudposts/1.json
  def update
    @cloudpost = Cloudpost.find(params[:id])

    respond_to do |format|
      if @cloudpost.update_attributes(params[:cloudpost])
        format.html { redirect_to @cloudpost, notice: 'Cloudpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cloudpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloudposts/1
  # DELETE /cloudposts/1.json
  def destroy
    @cloudpost = Cloudpost.find(params[:id])
    @cloudpost.destroy

    respond_to do |format|
      format.html { redirect_to cloudposts_url }
      format.json { head :no_content }
    end
  end
end
