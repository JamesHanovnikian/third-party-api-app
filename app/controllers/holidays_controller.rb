class HolidaysController < ApplicationController
  def index
    response = HTTP.get("https://calendarific.com/api/v2/holidays?&api_key=#{Rails.application.credentials.holidayKey}&country=US&year=2019")
    render json: response.parse(:json)
  end
end
