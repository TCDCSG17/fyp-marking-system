class MarksController < ApplicationController
	def create
		@student = Student.find(params[:id])
		@mark = @student.marks.create(params[:input1, :input2, :input3, :weight1, :weight2, :weight3, :mark1, :mark2, :mark3, :final_mark].permit(:input1, :input2, :input3, :weight1, :weight2, :weight3, :mark1, :mark2, :mark3, :final_mark))
		@mark.save

		if @mark.save
			redirect_to student_path(@student)
		else
			render 'new'
		end
	end

	def new
    	@mark = Mark.new
  end

  def show
  end

  private 
    def set_mark
      @mark = Mark.find(params[:id])
    end

end
