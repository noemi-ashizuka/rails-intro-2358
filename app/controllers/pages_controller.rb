class PagesController < ApplicationController
  def about
    # by default renders about.html.erb in the pages folder
  end

  def home
  end

  def contact
    @members = [ "Doug", "Sylvain", "Sasha", "Noemi", "Scooter", "Soufiane" ]

    if params[:member]
       @members = @members.select { |member| member.start_with?(params[:member].capitalize) }
    end
    # raise
  end
end
