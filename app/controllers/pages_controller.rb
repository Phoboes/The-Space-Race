class PagesController < ApplicationController

  def show
    
    @scores = Score.order(highscore: :desc).limit(5)
    
    @score = Score.new

  end

end

