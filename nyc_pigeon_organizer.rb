def nyc_pigeon_organizer(data)
  output = {}

  # First pass using the redcuce method. Key represents traits (color,gender,lives) where value is a nested hash
  data.reduce({}) do | memo, (trait,value) |
  
    # Pass reduce on the nested hash to extract an array of names and the value for each trait
    value.reduce({}) do | item, (key, names) |

      # Iterate over the names array and add data to output
      names.each{| name | 
        if !output[name] # Name doesn't exist, add new hash
          output[name] = { trait => [key.to_s] } 
        elsif !output[name][trait] # Name exists, but not trait, add new nested hash
          output[name][trait] = [key.to_s] 
        else # Trait already exists, but there is more data to add. Push that into the value array
          output[name][trait] << key.to_s
        end }  
    end
  end
  output
end
