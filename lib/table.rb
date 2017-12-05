class Table

  def self.make_array(array)
    return 'Only integers can be multiplied' if !array.all? {|i| i.is_a?(Integer)}
    rows = [[''] + array]
    array.each_with_index do |digit, index|
      row = array.map {|x| x * array[index]}
      row.unshift(digit)
      rows << row
    end
    rows
  end

end
