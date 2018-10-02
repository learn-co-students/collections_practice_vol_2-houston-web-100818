def begins_with_r(array)
   array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.find_all {|word| word.include?("a")}
end 

def first_wa(array)
  array.find do |i|
    if i[0] == "w" && i[1] == "a"
      return i
  end
 end
end

def remove_non_strings(array)
	#array.delete_if {|string| string.class != String}
	array.grep(String)
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end

def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    other_object = data[0][matchingProperty]
    
    other_object.each do |property, value|
      object[property] = value
    end
  end
end

def find_cool(cool)
  if cool[1].values[1] == "cool"
    [cool[1]]
  end
end


def organize_schools(schools)
  array = []
  schools.values.to_a.each do |value|
    array << value.values
  end
  school_array = array.flatten.uniq.sort

  h1 = {schools.to_a[0][1].values[0] => [schools.to_a[0][0], schools.to_a[1][0], schools.to_a[4][0]]}
  h2 = {school_array[0] => [schools.to_a[3][0]]}
  h3 = {school_array[2] => [schools.to_a[2][0], schools.to_a[5][0]]}
  h = {}
  h.merge!(h1)
  h.merge!(h2)
  h.merge!(h3)
  h
end
