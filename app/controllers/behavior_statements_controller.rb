class BehaviorStatementsController < ApplicationController

  $statements = ["Statement 1", "Statement 2", "Statement 3", "Statement 4", "Statement 5", "Statement 6", "Statement 7", "Statement 8", "Statement 9" ];

  def index

  end

  def score

    @statements = params[:behavior_statements]


    if @statements != nil
      @totalscore = 0

    end
  end
end
