class RevisionsController < ApplicationController
  # GET /revisions
  # GET /revisions.json
  def index
    @revisions = Revision.all

    render json: @revisions
  end

  # GET /revisions/1
  # GET /revisions/1.json
  def show
    @revision = Revision.find(params[:id])

    render json: @revision
  end

  # POST /revisions
  # POST /revisions.json
  def create
    @revision = Revision.new(params[:revision])

    if @revision.save
      render json: @revision, status: :created, location: @revision
    else
      render json: @revision.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /revisions/1
  # PATCH/PUT /revisions/1.json
  def update
    @revision = Revision.find(params[:id])

    if @revision.update(params[:revision])
      head :no_content
    else
      render json: @revision.errors, status: :unprocessable_entity
    end
  end

  # DELETE /revisions/1
  # DELETE /revisions/1.json
  def destroy
    @revision = Revision.find(params[:id])
    @revision.destroy

    head :no_content
  end
end
