class PokemonsController < ApplicationController
    def capture 
        @pokemon = Pokemon.find(params[:id])
        @pokemon.update(trainer_id: current_trainer.id)
        @pokemon.save!
        redirect_to '/'
    end
    
    def damage
        @pokemon = Pokemon.find(params[:id])
        @pokemon.health -= 10
        @pokemon.save
        if @pokemon.health <= 0
            @pokemon.destroy
        end
        redirect_to '/trainers/' + current_trainer.id.to_s 
    end
    
    def new 
        @pokemon = Pokemon.new
    end
    
    def create
        @pokemon = Pokemon.create(
            name: params["pokemon"]["name"],
            :level => 1,
            :health => 100, 
            :trainer => current_trainer)
        if @pokemon.valid?
            redirect_to '/trainers/' + current_trainer.id.to_s 
        else
            redirect_to '/pokemons/new'
            flash[:error] = @pokemon.errors.full_messages.to_sentence
        end
    end
end