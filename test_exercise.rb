require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'base case ' do
    assert_equal 7, Exercise.new.find(1, 2, 3, 10)
  end

    test 'base case 1' do
      assert_equal 1, Exercise.new.find(2, 3, 10)
    end


      test 'base case empty list' do
        assert_equal 1, Exercise.new.find()
      end
end
