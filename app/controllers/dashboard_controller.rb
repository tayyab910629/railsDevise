class DashboardController < ApplicationController
  before_action :authenticate_user!
  def details
    @transaction = current_user.transactions
    @piechart = @transaction.group(:category).order('sum_amount desc').limit(5).sum(:amount) 
    
  end
end
