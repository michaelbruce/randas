require 'csv'

class FileReader

  def initialize(filename)
    @filename = filename
    @file = csv_read(filename)
    detect_type
  end

  def detect_type
    @filename.include?('.') ? @filename.split('.')[-1].downcase : "No extension given"
  end

  def count_rows
    @file.size
  end

  def print_file

  end

  def csv_read(filename)
    CSV.read(
        @filename,
        {headers: true,
        encoding: 'utf-8',
        converters: lambda { |value| (value.nil? || value.downcase == 'null') ? '' : value.strip }})
  end

end
