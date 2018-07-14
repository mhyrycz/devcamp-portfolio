class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all #variable plural
  end

  def angular
    @angular_portfolio_items = Portfolio.angular #method created at model->portfolio.rb
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Your portfolio item is now live.'}
        # portfolios_path - back to full list. redirect_to @portfolio_item shows new element
        # added but there has to be show.html.erb also included.
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update # updated record jumped to the last
    @portfolio_item = Portfolio.find(params[:id]) #here has to be also cause defined again
    # like in blogs_controller set_blog in before_action
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id]) #defining variable to delete, rails knows already wchich id -MAGIC
    #DELETE
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was successfully destroyed.' }
      # format.json { head :no_content } # usable with api
      end
  end
end
