require 'test_helper'
 
class ScoreTest < ActiveSupport::TestCase

  test "should not save score without name" do
    score = Score.new
    assert_not score.save, "Saved the score without a name"
  end

  test "should not save score without highscore" do
    score = Score.new
    assert_not score.save, "Saved the article without a highscore"
  end

end