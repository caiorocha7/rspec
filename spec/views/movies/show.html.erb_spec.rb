require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    assign(:movie, Movie.create!(
      tittle: "Tittle",
      description: "MyText",
      director: "Director",
      duration: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tittle/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Director/)
    expect(rendered).to match(/2/)
  end
end
