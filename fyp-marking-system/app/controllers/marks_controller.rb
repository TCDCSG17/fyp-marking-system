class MarksController < ApplicationController
	def create
		@student = Student.find(params[:student_id])
		@mark = @student.marks.create(params[:input1, :input2, :input3, :weight1, :weight2, :weight3, :mark1, :mark2, :mark3, :final_mark].permit(:input1, :input2, :input3, :weight1, :weight2, :weight3, :mark1, :mark2, :mark3, :final_mark))

		if @mark.save
			redirect_to student_path(@student)
		else
			render 'new'
		end
	end
end
