require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      tittle: "MyString",
      description: "MyText",
      director: "MyString",
      duration: 1
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[tittle]"

      assert_select "textarea[name=?]", "movie[description]"

      assert_select "input[name=?]", "movie[director]"

      assert_select "input[name=?]", "movie[duration]"
    end
  end
end
