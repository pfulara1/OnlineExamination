class QuestionsController < ApplicationController
    
    def new
        @exams = Exam.all
    end
    
    def create
        question = Question.new()
        question.content = params[:content]
        options_string = ''
        (1..4).each do |opt_no|
            options_string += "#{params["option#{opt_no}"]}\r\n"    
        end
        question.options = options_string
        question.exam_id = params[:exam_id]
        question.answer = params[:answer]
        question.save
        redirect_to new_question_path
    end
    
end
