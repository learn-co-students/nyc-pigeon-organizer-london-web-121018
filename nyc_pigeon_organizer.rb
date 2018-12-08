def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |type, hash|
    hash.each do |stat, stat_array|
      stat_array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end 
        if !new_hash[name].has_key?(type)
          new_hash[name][type] = []
        end 
        if !new_hash[name][type].include?(stat)
          new_hash[name][type] << stat.to_s
        end 
      end 
    end 
  end 
  new_hash
end

