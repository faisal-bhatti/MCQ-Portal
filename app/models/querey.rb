class Querey < ActiveRecord::Base
  attr_accessible :subject, :grade, :question, :curr_ans, :sugg_ans, :reason,:user_id

  belongs_to :user
end
