require "slim-rails"
require "saulabs/trueskill"

module AppComponent
  require "app_component/engine"
  require_relative "../app/models/app_component/application_record.rb"
  require_relative "../app/models/app_component/team.rb"
  require_relative "../app/models/app_component/game.rb"
  require_relative "../app/models/app_component/prediction.rb"
  require_relative "../app/models/app_component/predictor.rb"

end
