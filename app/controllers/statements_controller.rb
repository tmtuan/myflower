class StatementsController < ApplicationController

  $statements = ["Am the life of the party",
                 "Feel little concern for others.",
                 "Am always prepared",
                 "Get stressed out easily",
                 "Have a rich vocabulary",
                 "Don't talk a lot",
                 "Am interested in people",
                 "Leave my belongings around",
                 "Am relaxed most of the time",
                 "Have difficulty understanding abstract ideas.",
                 "Feel comfortable around people.",
                 "Insult people",
                 "Pay attention to details.",
                 "Worry about things.",
                 "Have a vivid imagination.",
                 "Keep in the background.",
                 "Sympathize with others' feelings.",
                 "Make a mess of things.",
                 "Seldom feel blue.",
                 "Am not interested in abstract ideas.",
                 "Start conversations.",
                 "Am not interested in other people's problems.",
                 "Get chores done right away.",
                 "Am easily disturbed.",
                 "Have excellent ideas.",
                 "Have little to say.",
                 "Have a soft heart.",
                 "Often forget to put things back in their proper place.",
                 "Get upset easily.",
                 "Do not have a good imagination.",
                 "Talk to a lot of different people at parties.",
                 "Am not really interested in others.",
                 "Like order.",
                 "Change my mood a lot.",
                 "Am quick to understand things.",
                 "Don't like to draw attention to myself.",
                 "Take time out for others.",
                 "Shirk my duties.",
                 "Have frequent mood swings.",
                 "Use difficult words.",
                 "Don't mind being the center of attention.",
                 "Feel others' emotions.",
                 "Follow a schedule.",
                 "Get irritated easily.",
                 "Spend time reflecting on things.",
                 "Am quiet around strangers.",
                 "Make people feel at ease.",
                 "Am exacting in my work.",
                 "Often feel blue.",
                 "Am full of ideas."
                  ];

  def index

  end

  def new

  end

  def create
    @statement = Statement.new(statement_params)

    @statement.save
    redirect_to @statement
  end

  def show
    @statement = Statement.find(params[:id])
  end

  def score

    @statements = params[:statements]



    if @statements != nil
      @totalscore = 0

    end
  end

  def list
    @statements = Statement.all
  end


  private
  def statement_params
    params.require(:statement).permit(:content, :direction)
  end

end
