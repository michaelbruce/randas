require 'spec_helper'
require_relative '../file_reader'

describe FileReader do

  it "should be able to detect a filename with no extension" do
    csv = File.dirname(__FILE__) + '/fixtures/no_extension_file'
    reader = FileReader.new(csv)
    expect(reader.detect_type).to eq("No extension given")
  end

  it "should be able to detect and output the extension of a filename" do
    csv = File.dirname(__FILE__) + '/fixtures/csv_example1.csv'
    reader = FileReader.new(csv)
    expect(reader.detect_type).to eq("csv")
  end

  it "should output the number of rows in a csv" do
    csv = File.dirname(__FILE__) + '/fixtures/csv_example1.csv'
    reader = FileReader.new(csv)
    expect(reader.count_rows).to eq(4)
  end

  it "should calculate the sum total of a given column" do
    csv = File.dirname(__FILE__) + '/fixtures/csv_example1.csv'
    reader = FileReader.new(csv)
    expect(reader.sum_column("Duration")).to eq(127)
  end
end
