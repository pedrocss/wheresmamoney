class TransactionsController < ApplicationController

	def index
		@transactions = Transaction.where(user_id: 1).order('date DESC')
    @transactions = @transactions.where(type: params[:type]) if params[:type]

    respond_to :js
  end

end