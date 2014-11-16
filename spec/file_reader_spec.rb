require 'rspec'

require_relative '../file_reader'
#require 'spec_helper'

describe FileReader do

  it "should be able to correctly detect file type" do
    reader = FileReader.new("fixtures/test_01.csv")
  end
end
