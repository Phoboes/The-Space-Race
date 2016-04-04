class Score < ActiveRecord::Base
  validates :name, :highscore, presence: true
end
