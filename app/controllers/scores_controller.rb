class ScoresController < ApplicationController
    def index
        @scores = Score.all
        render json: @scores     
    end

    def show

    end
    
    def create 
        @score = Score.new(name: params["name"], score: params["score"].to_i);
        if @score.save
            render json: @score
        end
    end

    def leaderboard
        sorted_scores = Score.all.sort_by { |entree| entree.score }.reverse
        @top_ten = sorted_scores[0,10];
        render json: @top_ten
    end
end
