class PhotosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  # GET /photos
  # GET /phontos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user

    @graph = Koala::Facebook::API.new current_user.access_token
    #@clown = Magick::ImageList.new @photo.image.url
    #@clown_id = StringIO.open(@clown.to_blob) do |strio|
    #  response = @graph.put_picture(strio, "image/jpeg")
    #  response['id']
    #end
    #@picture_url = @graph.get_picture(@clown_id)
    #@graph.put_wall_post(@photo.description, {picture: @picture_url})
    respond_to do |format|
      if @photo.save
        logger.info url_for(action: 'photos', id: @photo.id, action: 'show')
        @graph.put_connections current_user.uid, 'feed', message: 'メッセージ',
                                                  link: url_for(action: 'photos', id: @photo.id, action: 'show')
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:title, :image, :description)
    end
end
