class PapersController < InheritedResources::Base

  private

    def paper_params
      params.require(:paper).permit(:format, :volume, :type, :genre, :cover, :publisher, :printing, :circulation, :price, :additional)
    end
end

