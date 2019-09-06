class V1::MarkersController < ApplicationController
	respond_to :json
	def index
		respond_with Marker.all
	end
	def show
    	respond_with Marker.find(params[:id])
  	end
  	def create
	    respond_with :v1, Marker.create(marker_params)
	end
	def destroy
		marker = Marker.destroy(params[:id])
	    respond_with @marker, json: @marker
	end
	def update
	    marker = Marker.find(params['id'])
	    marker.update(marker_params)
	    respond_with Marker, json: marker
	end
	private

    def marker_params
      params.require(:marker).permit(
        :guid,
        :latitude,
        :longitude,
        :title
      )
    end
end
