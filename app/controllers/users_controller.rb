class UsersController < ApplicationController
  def index
    Rails.cache.fetch("timeline-#{params[:id] || 'casetabs'}", expires_in: 5.minutes) do
      # Still don't have Twitter credentials for API authorization
      # @timeline = MicroBloggingService.new.list(params[:id] || 'casetabs', params[:count] || 20)
      @timeline = JSON.parse(File.read('spec/fixtures/timeline.json'))
    end
    fresh_when(@timeline)
  end

  def show
    Rails.cache.fetch("user-#{params[:id] || 'casetabs'}", expires_in: 5.minutes) do
      # @user = MicroBloggingService.new.user(params[:id] || 'casetabs')
      @user = JSON.parse(File.read('spec/fixtures/user.json'))
    end

    if stale?(@user)
      render json: @user
    end
  end
end
