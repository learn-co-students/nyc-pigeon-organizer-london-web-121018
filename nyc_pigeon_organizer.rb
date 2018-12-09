require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  # Get unique names
  names = data.collect do |category, attributes|
    attributes.values
  end.flatten.uniq

   # Create key with each name as a string pointing to empty hash
  names.each do |name|
    pigeon_list[name] = {}
  end

   # Create categories for each pidgeon and point each catergory to empty array
  data.each do |category, attributes|
    pigeon_list.each do |name, empty_hash|
      pigeon_list[name][category] = []
    end
  end

   # Populate each pidgeon's categories
  data.each do |category, attributes|
    pigeon_list.each do |name, hash|
      attributes.each do |key, value|
        if value.include? name
          pigeon_list[name][category]<<key.to_s
        end
      end
    end
  end
  pigeon_list
end
