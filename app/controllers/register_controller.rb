class RegisterController < ApplicationController
  def new
  end
  def create
  @registered = Registered.create(registered_params)
  @events = params["event"]["id"]
  @events.each do |e|
    @er = EventRegistered.create(event_id: e, registered_id: @registered.id)
  end
redirect_to '/'
end
private
def registered_params
  params.require(:register).permit(:name,:college,:branch,:year,:gender,:email,:mobile)
end

end
