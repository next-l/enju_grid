require 'rails_helper'

describe "manifestations/show" do
  fixtures :all

  before(:each) do
    @manifestation = assign(:manifestation, FactoryBot.create(:manifestation))
    @library_group = LibraryGroup.first
  end

  it "renders attributes in <p>" do
    allow(view).to receive(:policy).and_return double(show?: true, create?: true, update?: true)
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
