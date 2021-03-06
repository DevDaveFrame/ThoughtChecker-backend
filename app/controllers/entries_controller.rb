class EntriesController < ApplicationController

    def create
        entry = Entry.create(entry_params)
        render json: entry
    end 

    def update
        entry = Entry.find(params[:id])
        entry.update(entry_params)
        render json: entry
    end 

    def destroy
        @entry = Entry.find(params[:id])
        @entry.destroy 
    end 

    private 

    def entry_params
        params.require(:entry).permit(:mood, :narrative, :user_id)
    end 

end
