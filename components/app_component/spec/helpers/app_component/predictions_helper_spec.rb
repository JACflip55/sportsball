
require "spec_helper"

require_relative "../../../app/helpers/app_component/predictions_helper.rb"


RSpec.describe AppComponent::PredictionsHelper, :type => :helper do
  it "returns a nice prediction text" do
    Named = Struct.new(:name)
    text = prediction_text(Named.new("A"), Named.new("B"), Named.new("C"))
    expect(text).to eq "In the game between A and B the winner will be C"
  end
end
