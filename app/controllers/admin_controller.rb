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
  @upd=Upd.create(content: params[:upd][:content], user_id: current_user.user_id, event_id: current_user.event_id)
  @upd.save
  redirect_to admin_path, :notice => "Update Added"

end

end
