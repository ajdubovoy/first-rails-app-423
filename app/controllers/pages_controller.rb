class PagesController < ApplicationController
  def home
  end

  def about
    # CODE RELATING TO THIS CONTROLLER ACTION
  end

  def contact
    @members = ['thanh', 'dimitri', 'germain', 'damien', 'julien']

    if params[:member]
      # filter the members array with the user's input
      @members = @members.select do |member|
        # return true if the member satisfies our condition
        member.start_with?(params[:member])
        # check that the member's name starts with the characters the user has typed
      end
    end
  end
end
