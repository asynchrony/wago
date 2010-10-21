class GolfCoursesController < ApplicationController
  def index
    @golf_courses = GolfCourse.all
  end
  def new
    @golf_course = GolfCourse.new
    (1..9).each do |num|
      @golf_course.holes << Hole.new(:number => num)
    end
  end
  def create
    @golf_course = GolfCourse.new(params[:golf_course])
    if @golf_course.save
      redirect_to golf_courses_path
    else
      render :new 
    end
  end
  def edit
    @golf_course = GolfCourse.find(params[:id])
  end
  
  def update
    @golf_course = GolfCourse.find(params[:id])
    @golf_course.attributes = params[:golf_course]
    if @golf_course.save
      redirect_to golf_courses_path
    else
      render :edit
    end
  end
  def destroy
    @golf_course = GolfCourse.find(params[:id])
    @golf_course.destroy
    redirect_to golf_courses_path
  end
    
end