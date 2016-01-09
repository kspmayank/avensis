class AdminController < ApplicationController
  def index
    if session[:user_id]
      @obj = EventRegistered.where(event_id: current_user.event_id).all
      @obj.each do |o|
        Registered.find(registered_id: @obj.registered_id)
      end

    end
end
def update
  p current_user.id
  @upd=Upd.create(content: params[:upd][:content], user_id: current_user.id, event_id: current_user.event_id)
  @upd.save
  redirect_to '/admin/index', :notice => "Update Added"

end

end
