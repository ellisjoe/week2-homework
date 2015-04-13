class DiceController < ApplicationController
    def index
    end

    def roll
        dice = (1..6).to_a
        @die1 = dice.sample
        @die2 = dice.sample
        @roll = @die1 + @die2

        if !params["goal"]
            @state = "new"
            @goal = @roll
            @state = "win" if @goal == 7 or @goal == 11
            @state = "lose" if @goal == 2 or @goal == 3 or @goal == 12
        else
            @goal = params["goal"].to_i
            @state = "roll"
            @state = "win" if @roll == @goal
            @state = "lose" if @roll == 7
        end
    end
end
