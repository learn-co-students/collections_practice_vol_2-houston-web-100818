require "pry"

def begins_with_r(tools)
    tools.each do |element|
        if element[0].downcase != "r"
            return false        
        end
    end
    true
end

def contain_a(array)
    has_an_a = []

    array.each do |element|
        if element.include?("a")
            has_an_a << element
        end
    end
    has_an_a
end

def first_wa(array)
    array.each do |element|
        return element if element[0, 2].downcase == "wa"
    end
end

def remove_non_strings(array)
    array.delete_if do |element|
        element.class.name != "String"
    end
end

def count_elements(array)
    counted_array = []
    counted_names = []

    array.each do |element|
        if !counted_names.include?(element[:name])
            element[:count] = array.count(element)
            counted_array << element
            counted_names << element[:name]
        end
    end
    counted_array
end

def merge_data(key, data)
    merged_hash = []

    key.each do |name_hash|
        merged_hash << name_hash
    end

    data.each do |datum|
        datum.each do |k,v|
            merged_hash.each do |names|
                if k == names[:first_name]
                    merged_hash[merged_hash.index(names)] = names.merge(v)
                end
            end
        end
    end
    merged_hash
end

def find_cool(cool)
    cool.each do |hash|
        if hash[:temperature] == "cool"
            return [hash]
        end
    end
end

def organize_schools(schools)
    organized_hash = {}

    schools.each do |school, loc|
        loc.each do |key, value|
            if organized_hash[value] == nil
               organized_hash[value] = []
               organized_hash[value] << school
            else
                organized_hash[value] << school
            end
        end
    end
    organized_hash
end