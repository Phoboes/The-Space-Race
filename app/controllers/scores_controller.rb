class ScoresController < ApplicationController

  # def new
  #   @score = Scores.new
  # end

  def create
    @score = Score.new(score_params)
   
      respond_to do |format|
    if @score.save
      format.html { redirect_to @score, notice: 'score was successfully created.' }
      format.js   {}
      format.json { render json: @score, status: :created, location: @score }
    else
      format.html { render action: "new" }
      format.json { render json: @score.errors, status: :unprocessable_entity }
    end
  end

    @score.save
    redirect_to root_path
  end

  def destroy
    @score = Score.find_by[:id].destroy
  end

private
  def score_params
    params.require(:score).permit(:name, :highscore)
  end

end
