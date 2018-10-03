RSpec.describe "ruby's keyword args" do

  def method_with_keyword_arguments(one: 1, two: 'two')
    [one, two]
  end

  it "is possible to define a method with keyword arguments" do
<<<<<<< HEAD
    expect( method_with_keyword_arguments.class ).to eq( Array )
    expect( method_with_keyword_arguments ).to eq( [1, 'two'] )
    expect( method_with_keyword_arguments(one: 'one') ).to eq( ['one', 'two'] )
    expect( method_with_keyword_arguments(two: 2) ).to eq( [1, 2] )
=======
    expect( method_with_keyword_arguments.class ).to eq( __ )
    expect( method_with_keyword_arguments ).to eq( __ )
    expect( method_with_keyword_arguments(one: 'one') ).to eq( __ )
    expect( method_with_keyword_arguments(two: 2) ).to eq( __ )
>>>>>>> 71bfb2df2a174ad9e2f25e09abadb8963298cd2b
  end

  def method_with_keyword_arguments_with_mandatory_argument(one, two: 2, three: 3)
    [one, two, three]
  end

  it "is possible to define a method with regular and keyword arguments" do
<<<<<<< HEAD
    expect { method_with_keyword_arguments_with_mandatory_argument }.to raise_error( ArgumentError, /given 0, expected 1/ )
=======
    expect { method_with_keyword_arguments_with_mandatory_argument }.to raise_error( __, /__/ )
>>>>>>> 71bfb2df2a174ad9e2f25e09abadb8963298cd2b
  end

end
