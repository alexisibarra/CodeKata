require_relative '../binarySearch'

describe 'Recursive BinarySearch' do
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
  it "bigger than the bigest in a 2-elements set" do
    # pending "It fails if looking for an element bigger than the biggest"
    expect(BinarySearch.chop(method, 7, [1, 3])).to eq(-1)
  end
  it "smaller than the smallest in a 2-elements set" do
    # pending "It fails if looking for an element bigger than the biggest"
    expect(BinarySearch.chop(method, 2, [5, 20])).to eq(-1)
  end
  it "bigger than the bigest in a 3-elements set" do
    # pending "It fails if looking for an element bigger than the biggest"
    expect(BinarySearch.chop(method, 7, [1, 3, 5])).to eq(-1)
  end
  it "smaller than the smallest in a 3-elements set" do
    # pending "It fails if looking for an element smaller than the smallest"
    expect(BinarySearch.chop(method, 1, [2, 3, 5])).to eq(-1)
  end
  it "present in the beginning of a 3-elements set" do
    expect(BinarySearch.chop(method, 1, [1, 3, 5])).to eq(0)
  end
  it "present in the middle of a 3-elements set" do
    expect(BinarySearch.chop(method, 3, [1, 3, 5])).to eq(1)
  end
  it "present in the middle of a 3-elements set" do
    expect(BinarySearch.chop(method, 5, [1, 3, 5])).to eq(2)
  end
end

describe 'Iterative BinarySearch' do
  let (:method) { 'iterative' }

  it "inspecting an empty array" do
    expect(BinarySearch.chop(method, 3, [])).to eq(-1)
  end
  it "not present in a single-element array" do
    expect(BinarySearch.chop(method, 3, [1])).to eq(-1)
  end
  it "present in a single-element array" do
    expect(BinarySearch.chop(method, 3, [3])).to eq(0)
  end
  it "bigger than the bigest in a 2-elements set" do
    # pending "It fails if looking for an element bigger than the biggest"
    expect(BinarySearch.chop(method, 7, [1, 3])).to eq(-1)
  end
  it "smaller than the smallest in a 2-elements set" do
    # pending "It fails if looking for an element bigger than the biggest"
    expect(BinarySearch.chop(method, 2, [5, 20])).to eq(-1)
  end
  it "bigger than the bigest in a 3-elements set" do
    # pending "It fails if looking for an element bigger than the biggest"
    expect(BinarySearch.chop(method, 7, [1, 3, 5])).to eq(-1)
  end
  it "smaller than the smallest in a 3-elements set" do
    # pending "It fails if looking for an element smaller than the smallest"
    expect(BinarySearch.chop(method, 1, [2, 3, 5])).to eq(-1)
  end
  it "present in the beginning of a 3-elements set" do
    expect(BinarySearch.chop(method, 1, [1, 3, 5])).to eq(0)
  end
  it "present in the middle of a 3-elements set" do
    expect(BinarySearch.chop(method, 3, [1, 3, 5])).to eq(1)
  end
  it "present in the middle of a 3-elements set" do
    expect(BinarySearch.chop(method, 5, [1, 3, 5])).to eq(2)
  end
end

describe 'BinarySearch#get_middle_point' do
  it "single-element set" do
    expect(BinarySearch.get_middle_point(3,3)).to eq 3
  end
  it "single-element set" do
    expect(BinarySearch.get_middle_point(0,1)).to eq 0
  end
  it "small set" do
    expect(BinarySearch.get_middle_point(1,3)).to eq 2
  end
  it "even set" do
    expect(BinarySearch.get_middle_point(11,40)).to eq 25
  end
end
