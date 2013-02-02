class ProcessdefsController < ApplicationController
  # GET /processdefs
  # GET /processdefs.json
  def index
    @processdefs = Processdef.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @processdefs }
    end
  end

  # GET /processdefs/1
  # GET /processdefs/1.json
  def show
    @processdef = Processdef.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @processdef }
    end
  end

  # GET /processdefs/new
  # GET /processdefs/new.json
  def new
    @processdef = Processdef.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @processdef }
    end
  end

  # GET /processdefs/1/edit
  def edit
    @processdef = Processdef.find(params[:id])
  end

  # POST /processdefs
  # POST /processdefs.json
  def create
    @processdef = Processdef.new(params[:processdef])

    respond_to do |format|
      if @processdef.save
        format.html { redirect_to @processdef, notice: 'Process was successfully created.' }
        format.json { render json: @processdef, status: :created, location: @processdef }
      else
        format.html { render action: "new" }
        format.json { render json: @processdef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /processdefs/1
  # PUT /processdefs/1.json
  def update
    @processdef = Processdef.find(params[:id])

    respond_to do |format|
      if @processdef.update_attributes(params[:processdef])
        format.html { redirect_to @processdef, notice: 'Process was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @processdef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processdefs/1
  # DELETE /processdefs/1.json
  def destroy
    @processdef = Processdef.find(params[:id])
    @processdef.destroy

    respond_to do |format|
      format.html { redirect_to processdefs_url }
      format.json { head :no_content }
    end
  end
end
