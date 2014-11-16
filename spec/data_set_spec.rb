require 'rspec'

require_relative '../data_set'
#require 'spec_helper'

describe DataSet do

  pending "should be able to correctly detect file type"

  it "should be able to correctly read a csv into arrays" do
    reader = DataSet.new("spec/fixtures/test_01.csv")
    expect(reader.print_file).to eq([["FirstName", "LastName", "Age"],
                                     ["Bobby", "Turner", "56"],
                                     ["Alan", "Walker", "32"]])
  end

  pending "should join one DataSet to another"
end
