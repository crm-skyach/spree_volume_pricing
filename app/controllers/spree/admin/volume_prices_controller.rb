module Spree
  module Admin
    class VolumePricesController < Spree::Admin::BaseController
      def destroy
        @volume_price = Spree::VolumePrice.find(params[:id])
        if @volume_price.destroy
          respond_to do |format|
            format.js {render inline: "location.reload();" }
            flash[:error] = 'Volume price was successfully destroyed.'
          end
        end
      end
    end
  end
end
