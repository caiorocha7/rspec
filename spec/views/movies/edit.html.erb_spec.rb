require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  let(:movie) {
    Movie.create!(
      tittle: "MyString",
      description: "MyText",
      director: "MyString",
      duration: 1
    )
  }

  before(:each) do
    assign(:movie, movie)
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(movie), "post" do

      assert_select "input[name=?]", "movie[tittle]"

      assert_select "textarea[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[director]"

      assert_select "input[name=?]", "movie[duration]"
    end
  end
end
