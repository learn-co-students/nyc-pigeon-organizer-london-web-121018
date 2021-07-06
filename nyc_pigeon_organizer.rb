require 'pry'
def nyc_pigeon_organizer(hash)
  # write your code here!
  pigeon_list ={}
  hash.each do |data ,details|
    details.each do |key ,value|
      value.each do |name|
        pigeon_list[name] ||= {} 
        pigeon_list[name][data] ||= []
        pigeon_list[name][data] << key.to_s
      end
    end
  end
  pigeon_list
end
