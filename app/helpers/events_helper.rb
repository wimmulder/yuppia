module EventsHelper
  def toggle_like_button(event, user)
    if current_user.flagged?(event, :like)
      link_to "Ik ga niet meer", like_event_path(event)
    else
      link_to "Ik ga hier heen", like_event_path(event)
  end
end
end
