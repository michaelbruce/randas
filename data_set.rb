require 'csv'

class DataSet

  def initialize(filename)
    @filename = filename
    #@filedata = detect_type
    read_csv
  end

  def detect_type
    @filename.include?('.') ? @filename.split('.')[-1] : "No extension given"
  end

  def read_csv
    @filedata = CSV.read(@filename)
  end

  def write_csv
    CSV.open(@filename, 'w') {|csv| @filedata.each {|record| csv << record }}
  end

  def get_data
    @filedata
  end

  def print_file
    @filedata.each {|line| p line }
  end

  def join(data_set)
    data_set.get_data.each {|record| @filedata << record }
  end

end
