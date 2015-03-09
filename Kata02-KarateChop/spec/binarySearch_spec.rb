require_relative '../binarySearch'

describe BinarySearch do
  let (:method) { 'recursive' }

  it "inspecting an empty array" do
    expect(BinarySearch.chop(method, 3, [])).to eq(-1)
  end
  it "not present in a single-element array" do
    expect(BinarySearch.chop(method, 3, [1])).to eq(-1)
  end
  it "present in a single-element array" do
    expect(BinarySearch.chop(method, 3, [3])).to eq(0)
  end
end

# def test_chop
    # assert_equal(-1, Recursive.chop(3, []))
#   assert_equal(0,  chop(1, [1]))
#   #
#   assert_equal(0,  chop(1, [1, 3, 5]))
#   assert_equal(1,  chop(3, [1, 3, 5]))
#   assert_equal(2,  chop(5, [1, 3, 5]))
#   assert_equal(-1, chop(0, [1, 3, 5]))
#   assert_equal(-1, chop(2, [1, 3, 5]))
#   assert_equal(-1, chop(4, [1, 3, 5]))
#   assert_equal(-1, chop(6, [1, 3, 5]))
#   #
#   assert_equal(0,  chop(1, [1, 3, 5, 7]))
#   assert_equal(1,  chop(3, [1, 3, 5, 7]))
#   assert_equal(2,  chop(5, [1, 3, 5, 7]))
#   assert_equal(3,  chop(7, [1, 3, 5, 7]))
#   assert_equal(-1, chop(0, [1, 3, 5, 7]))
#   assert_equal(-1, chop(2, [1, 3, 5, 7]))
#   assert_equal(-1, chop(4, [1, 3, 5, 7]))
#   assert_equal(-1, chop(6, [1, 3, 5, 7]))
#   assert_equal(-1, chop(8, [1, 3, 5, 7]))
# # end
