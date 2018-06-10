require 'rails_helper'

describe "manifestations/index" do
  fixtures :all

  before(:each) do
    @manifestations = assign(:manifestations,
      Kaminari.paginate_array( [
        FactoryBot.create(:manifestation),
      ], total_count: 1).page(1)
    )
    @count = { query_result: 1 }
    @reservable_facet = @carrier_type_facet = @language_facet = @library_facet = @pub_year_facet = []
    @index_agent = {}
    @seconds = 0
    @max_number_of_results = 500
    @library_group = LibraryGroup.first
    view.stub(:params).and_return(ActionController::Parameters.new)
  end

  it "renders attributes in <p>" do
    allow(view).to receive(:policy).and_return double(update?: true)
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end

  it "renders with per_page parameter" do
    allow(view).to receive(:policy).and_return double(update?: true)
    params[:per_page] = 3
    expect{ render }.not_to raise_error
    expect( rendered ).to match /31\%/
  end
end
