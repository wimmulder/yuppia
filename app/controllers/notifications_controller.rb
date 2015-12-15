def index
  @activities = PublicActivity::Activity.all
end
