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
    @file.each do |row|
      p row
    end
  end

  def sum_column(identifier)
    count = 0
    @file.each do |row|
      count += row[identifier].to_i
    end
    count
  end

  def csv_read(filename)
    CSV.read(
        @filename,
        {headers: true,
        encoding: 'utf-8',
        converters: lambda { |value| (value.nil? || value.downcase == 'null') ? '' : value.strip }})
  end

end
