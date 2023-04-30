# app/controllers/pages_controller.rb
require 'faker'
class PagesController < ApplicationController
  def index
    @users = Array.new(10) { User.new(Faker::LoremFlickr) }
    @pages = Array.new(10) { Page.new(Faker::LoremFlickr) }
  end
  def show
    @user = User.new(Faker::Name.name)
    @page = Page.find_by(title: params[:title])
  end
end
