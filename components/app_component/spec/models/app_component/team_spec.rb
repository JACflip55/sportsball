require 'active_record'
require_relative "../../../app/models/app_component/application_record.rb"
require_relative "../../../app/models/app_component/team.rb"

RSpec.describe AppComponent::Team do
  it { should validate_presence_of :name }
end
