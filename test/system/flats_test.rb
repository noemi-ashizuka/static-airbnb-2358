require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"

    assert_selector "h1", text: "Flat"
  end

  test "counting flats" do
    visit "/"

    assert_selector ".card-trip", count: 6
  end

  test "visiting the show" do
    visit "/flats/201"

    assert_selector "h1", text: "Super 60m2 in trendy neighborhood!"
  end
end
