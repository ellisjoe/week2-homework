class RpsController < ApplicationController

    def index
        @choices = choices
    end

    def play
        @player = params["player"]
        @computer = choices.sample
        @winner = nil

        if @player == "rock"
            if @computer == "paper"
                @winner = "Computer"
            elsif @computer == "scissors"
                @winner = "Player"
            end
        end

        if @player == "paper"
            if @computer == "rock"
                @winner = "Player"
            elsif @computer == "scissors"
                @winner = "Computer"
            end
        end

        if @player == "scissors"
            if @computer == "rock"
                @winner = "Computer"
            elsif @computer == "paper"
                @winner = "Player"
            end
        end

        if !@winner then @winner = "It's a tie!" end
    end

    def choices
        ["rock", "paper", "scissors"]
    end
end
