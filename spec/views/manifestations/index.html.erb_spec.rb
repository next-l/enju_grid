require 'spec_helper'

describe "manifestations/index" do
  fixtures :all

  before(:each) do
    @manifestations = assign(:manifestations,
      Kaminari.paginate_array( [
        FactoryGirl.create(:manifestation),
      ], total_count: 1).page(1)
    )
    @count = { query_result: 1 }
    @reservable_facet = @carrier_type_facet = @language_facet = @library_facet = @pub_year_facet = []
    @index_agent = {}
    @seconds = 0
    @max_number_of_results = 500

    @ability = Object.new
    @ability.extend(CanCan::Ability)
    controller.stub(:current_ability) { @ability }
    view.stub(:params).and_return(ActionController::Parameters.new)
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end

  it "renders with per_page parameter" do
    params[:per_page] = 3
    expect{ render }.not_to raise_error
    expect( rendered ).to match /31\%/
  end
end
