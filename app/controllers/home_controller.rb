class HomeController < ApplicationController
  def index
    @total_expenses = Expense.sum(:amount)
    @total_transactions = Expense.count

    @recent_expenses = Expense.order(created_at: :desc).limit(5)
  end
end
