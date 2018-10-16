require 'pry'

def begins_with_r(string_array)
  string_array.each do |string|
    if !string.start_with?('r')
      return false
    end
  end
  true
end

def contain_a(string_array)
  string_array.select do |string|
    string.include?('a')
  end
end

def first_wa(string_array)
  string_array.find do |string|
    if string.class == String
      string.start_with?("wa")
    end
  end
end

def remove_non_strings(string_array)
  string_array.select do |string|
    string.class == String
  end
end

def count_elements(array)
  new_array = array.uniq
  new_array.map do |element|
    element[:count] = array.count(element)
  end
  new_array
end

def merge_data(keys, values)
  container = []
  keys.each do |person|
    name = person[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  container
  end


  container
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == 'cool'
  end
end

def organize_schools(schools_hash)
  organized_schools = {}
  schools_hash.each do |name, location_hash|
    city = location_hash[:location]
    if organized_schools[city]
      organized_schools[city] << name
    else
      organized_schools[city] = [name]
    end
  end
  organized_schools
end
