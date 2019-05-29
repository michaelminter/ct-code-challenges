class UsersController < ApplicationController
  # before_action :set_timeline, only: :index
  # before_action :set_user

  def index
    # Rails.cache.fetch("timeline-#{params[:id] || 'casetabs'}", expires_in: 5.minutes) do
    #   MicroBloggingService.new.list(params[:id] || 'casetabs', params[:count] || 20)
    # end
    @timeline = JSON.parse(File.read('spec/fixtures/timeline.json')) #, object_class: ::TimelineSerializer)
  end

  def show
    # Rails.cache.fetch("user-#{params[:id] || 'casetabs'}", expires_in: 5.minutes) do
    #   MicroBloggingService.new.user(params[:id] || 'casetabs')
    # end
    @user = JSON.parse(File.read('spec/fixtures/user.json'))
    render json: @user
  end

  private

  def set_timeline
    # @timeline = Rails.cache.fetch("timeline-#{params[:id] || 'casetabs'}", expires_in: 5.minutes)
  end

  def set_user
    # @user = Rails.cache.fetch("user-#{params[:id] || 'casetabs'}", expires_in: 5.minutes)
  end
end
