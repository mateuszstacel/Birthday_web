require 'sinatra/base'
require 'date'
require_relative './lib/datee.rb'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/details' do
    $name = params[:user_name]
    @birth_day = params[:birth_day]
    @birth_month_year = params[:birth_month_year]
    $full_date =  @birth_month_year << "-" << @birth_day
    redirect '/test'
  end

  get '/test' do
    check = Datee.new
    month = check.found_month($full_date)
    days_number = check.days_check(month)
    a_date = Date.parse(Date.today.to_s)
    b_date = Date.parse($full_date.to_s)
    $days_to_birthday = (b_date-a_date).to_i
    if @birth_day.to_i > days_number.to_
      erb :error
    elsif $full_date.to_s == Date.today.to_s
      erb :birthday
    else
      erb :days_to_birthday
  end
  end

run! if app_file == $0
end
