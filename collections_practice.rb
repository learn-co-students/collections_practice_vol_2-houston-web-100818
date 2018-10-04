def begins_with_r(array)
  #bool will be true if the first letter of any word doesnt begin with r
 bool = array.any? do |word|
    word[0] != "r"
  end
  #if bool is true=>false otherwise return true
  if bool == true
    false
  else
    true
  end
end
#return all elements that contain the letter 'a'
def contain_a(array)
  array2 = []
  array2 = array.select do |word|
    if word.include?("a")
      true
    else
      false
    end
  end
end

#Return the first element that begins with the letters 'wa'
def first_wa(array)
  item = ""
  item = array.find do |word|
    if word[0..1].include?("wa")
      true
    else
      false
    end
  end
end

#remove anything that's not a string from an array
def remove_non_strings(array)
  array_non = []
  i = 0
  while i < array.length
    if array[i].is_a?(String) == true
      array_non << array[i]
    end
    i += 1
  end
  array_non
end

#count how many times something appears in an array  
def count_elements(array)
  temp = array.each_with_object(Hash.new(0)) do |item, i|
    i[item[:name]] += 1
  end
  temp.map do  |name, count|
    { :name=>name, :count=>count } 
  end
end

#combines two nested data structures into one
def merge_data(keys, data)
  data[0].values.map.with_index do |item, i| 
    keys[i].merge(item)
  end
end

#find all cool hashes
def find_cool(cool)
  cool.select do |item| 
    item[:temperature] == "cool"
  end
end

#organizes the schools by location
def organize_schools(schools)
  org = {}
  schools.each do |key, locKey|
    locKey.each do |k, location|
      if !org.has_key?(location)
        org[location] = [key]
      elsif org.has_key?(location)
        org[location] << key
      end
    end
  end
  org
end
