class CalculationsController < ApplicationController

  def flexible_square_5
    # Parameters: {"number"=>"8"}
    @user_num = params["number"].to_f
    render("calculations/flexible_square_5.html.erb")
  end
  def flexible_square_root
    # Parameters: {"number"=>"8"}
    rawdata = params["number"].to_f
    @user_num = rawdata
    render("calculations/flexible_square_root.html.erb")
  end

  def flexible_payment
    # Parameters: {"number"=>"8"}
    @apr = params["apr"].to_f
    @years = params["years"].to_i
    @principal = params["principal"].to_f
    @monthly_payment = ((((@apr/10000)/12) * @principal) /(1 - (1 + ((@apr/10000)/12)) ** ( -(@years * 12))))
    render("calculations/flexible_payment.html.erb")
  end
  def flexible_random
    # Parameters: {"number"=>"8"}
    @number = 50
    @number2 = 100
    @random_number = rand(50..100)
    render("calculations/flexible_random.html.erb")
  end
  def square_form
    # Parameters: {"number"=>"8"}
    render("calculations/square_form.html.erb")
  end
  def square
    # Parameters: {"number"=>"8"}
    # Parameters: {"user_num"=>"44"}
    @user_num = params[:user_number].to_f
    render("calculations/square.html.erb")
  end
  def square_root_form
    # Parameters: {"number"=>"8"}
    render("calculations/square_root_form.html.erb")
  end
  def square_root
    # Parameters: {"number"=>"8"}
    # Parameters: {"user_num"=>"44"}
    @user_num = params[:user_number].to_f
    render("calculations/square_root.html.erb")
  end
  def payment_form
    # Parameters: {"number"=>"8"}
    render("calculations/payment_form.html.erb")
  end
  def payment
    # Parameters: {"number"=>"8"}
    # Parameters: {"user_num"=>"44"}
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_i
    @principal = params[:user_pv].to_f
    @monthly_payment = ((((@apr/100)/12) * @principal) /(1 - (1 + ((@apr/100)/12)) ** ( -(@years * 12))))
    render("calculations/payment.html.erb")
  end

end
