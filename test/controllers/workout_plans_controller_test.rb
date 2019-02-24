require 'test_helper'

class WorkoutPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_plan = workout_plans(:one)
  end

  test "should get index" do
    get workout_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_plan_url
    assert_response :success
  end

  test "should create workout_plan" do
    assert_difference('WorkoutPlan.count') do
      post workout_plans_url, params: { workout_plan: { description: @workout_plan.description, level: @workout_plan.level, price: @workout_plan.price, title: @workout_plan.title } }
    end

    assert_redirected_to workout_plan_url(WorkoutPlan.last)
  end

  test "should show workout_plan" do
    get workout_plan_url(@workout_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_plan_url(@workout_plan)
    assert_response :success
  end

  test "should update workout_plan" do
    patch workout_plan_url(@workout_plan), params: { workout_plan: { description: @workout_plan.description, level: @workout_plan.level, price: @workout_plan.price, title: @workout_plan.title } }
    assert_redirected_to workout_plan_url(@workout_plan)
  end

  test "should destroy workout_plan" do
    assert_difference('WorkoutPlan.count', -1) do
      delete workout_plan_url(@workout_plan)
    end

    assert_redirected_to workout_plans_url
  end
end
