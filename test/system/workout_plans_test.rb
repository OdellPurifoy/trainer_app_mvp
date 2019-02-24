require "application_system_test_case"

class WorkoutPlansTest < ApplicationSystemTestCase
  setup do
    @workout_plan = workout_plans(:one)
  end

  test "visiting the index" do
    visit workout_plans_url
    assert_selector "h1", text: "Workout Plans"
  end

  test "creating a Workout plan" do
    visit workout_plans_url
    click_on "New Workout Plan"

    fill_in "Description", with: @workout_plan.description
    fill_in "Level", with: @workout_plan.level
    fill_in "Price", with: @workout_plan.price
    fill_in "Title", with: @workout_plan.title
    click_on "Create Workout plan"

    assert_text "Workout plan was successfully created"
    click_on "Back"
  end

  test "updating a Workout plan" do
    visit workout_plans_url
    click_on "Edit", match: :first

    fill_in "Description", with: @workout_plan.description
    fill_in "Level", with: @workout_plan.level
    fill_in "Price", with: @workout_plan.price
    fill_in "Title", with: @workout_plan.title
    click_on "Update Workout plan"

    assert_text "Workout plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout plan" do
    visit workout_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout plan was successfully destroyed"
  end
end
