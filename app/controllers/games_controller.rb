require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ('a'..'z').to_a.sample
    end
  end

  def score
    @word = params[:word]

    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    dictionary = open(url).read
    @valid_word = JSON.parse(dictionary)
    raise

    # if !@word.include?(@letters)
    #   "Sorry but #{@word} can't be built out of #{@letters}"
    # elsif @valid_word[found] == false
    #   "Sorry but #{@word} does not seem to be a valid English word..."
    # else
    #   "Congratulations! #{@word} is a valid english word!"
    # end
  end
end


