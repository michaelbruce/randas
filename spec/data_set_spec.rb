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

  pending "should be able to order data by numerical column"

  # example use case can be ordering a series of customer accounts
  # by amount of time spent on them against how much they pay for a service.
  pending "should be able to order data by function of multiple columns in a single table"

  pending "should be able to order data by function of multiple columns from multiple tables"

  pending "should join one DataSet to another"
end
