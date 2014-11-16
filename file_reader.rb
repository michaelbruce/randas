require 'csv'

class FileReader

  def initialize(filename)
    @filename = filename
    detect_type
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

  def print_file
    print 'WIP'
  end

end
