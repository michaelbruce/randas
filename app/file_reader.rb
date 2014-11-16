import csv

class FileReader

  def initialize(filename)
    @filename = filename
    detect_type
  end

  def detect_type
    @filename.include?('.') ? @filename.include?('.')[-1] : "No extension given"
  end

  def read_csv
    with open(@filename, 'rb') as csvfile: @filedata = csv.reader(@filename, delimiter=' ', quotechar='|')
  end

  def print_file

  end

end
