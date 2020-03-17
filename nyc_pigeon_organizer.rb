def nyc_pigeon_organizer(data)
  # write your code here!
  
  # loop through the colors and get the names. Then add those names as a key in a new hash
  
  # find name in gender. If male/female add key value pair in new hash
  
  # find name in lives. Find where they live and add as key value pair in new hash
  
  formatted_pigeon_data = {}
  
  data.each do |key, value|
    value.each do |stats, names|
      names.each do |name|
        if formatted_pigeon_data[name] == nil
          formatted_pigeon_data[name] = {}
        end
        if formatted_pigeon_data[name][key] == nil
          formatted_pigeon_data[name][key] = []
        end
        formatted_pigeon_data[name][key] << stats.to_s
      end
    end
  end
  formatted_pigeon_data
end