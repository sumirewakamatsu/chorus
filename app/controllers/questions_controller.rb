class QuestionsController < ApplicationController
    def index
        @questions= Question.all
    end
    
    def new
        @question = Question.new
    end
    def create
        question = Question.new(question_params)
        question.user_id = current_user.id

        if question.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def show
        @question = Question.find(params[:id])
        @answer = Answer.new
    end

    def edit
        @question = Question.find(params[:id])
    end

    def update
        question = Question.find(params[:id])
        if question.update(question_params)
          redirect_to :action => "show", :id => question.id
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        question = Question.find(params[:id])
        question.destroy
        redirect_to action: :index
    end

    private
     def question_params
        params.require(:question).permit(:title, :body)
      end
     def ensure_current_user
        @question = Question.find_by(id: params[:id])
        if @question.user_id != current_user.id
            redirect_to("/questions/#{@question.id}")
        end
    end
    




end
