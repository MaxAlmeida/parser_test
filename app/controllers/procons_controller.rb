# -*- encoding : utf-8 -*-
class ProconsController < ApplicationController
  # GET /procons
  # GET /procons.json
  def index
    @procons = Procon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @procons }
    end
  end

  def import
    
    Procon.import(params[:file])
    redirect_to procons_url, notice:  "Convenios importados com sucesso"

  end

  # GET /procons/1
  # GET /procons/1.json
  def show
    @procon = Procon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @procon }
    end
  end

  # GET /procons/new
  # GET /procons/new.json
  def new
    @procon = Procon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @procon }
    end
  end

  # GET /procons/1/edit
  def edit
    @procon = Procon.find(params[:id])
  end

  # POST /procons
  # POST /procons.json
  def create
    @procon = Procon.new(params[:procon])

    respond_to do |format|
      if @procon.save
        format.html { redirect_to @procon, notice: 'Procon was successfully created.' }
        format.json { render json: @procon, status: :created, location: @procon }
      else
        format.html { render action: "new" }
        format.json { render json: @procon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /procons/1
  # PUT /procons/1.json
  def update
    @procon = Procon.find(params[:id])

    respond_to do |format|
      if @procon.update_attributes(params[:procon])
        format.html { redirect_to @procon, notice: 'Procon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @procon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procons/1
  # DELETE /procons/1.json
  def destroy
    @procon = Procon.find(params[:id])
    @procon.destroy

    respond_to do |format|
      format.html { redirect_to procons_url }
      format.json { head :no_content }
    end
  end
end
