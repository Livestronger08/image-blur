class Image
    attr_accessor :data

    def initialize(data)
      @data = data
    end
  
    def blur
        @data = data
        @data.each_with_index do |row, row_number|
            row.each_with_index do |item, col_number|
                data.each do |found_row_number, found_col_number|
                    if row_number == found_row_number && col_number == found_col_number
                    @data[row_number -1][col_number] = 1 unless row_number == 0
                    @data[row_number +1][col_number] = 1 unless row_number == 0
                    @data[row_number][col_number -1] = 1 unless col_number == 0
                    @data[row_number][col_number +1] = 1 unless col_number == 0
                    return Image.new(@data)
                    end 
                end
            end
        end
    end 
end