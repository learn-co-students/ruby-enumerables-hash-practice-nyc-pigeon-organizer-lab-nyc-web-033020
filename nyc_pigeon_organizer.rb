def nyc_pigeon_organizer(data)
pigeons = data.each_with_object({}) do |(attr_name, attr_values), pigeons|
  attr_values.each do |attr_value, names|
    names.each do |name|
      
      #if name does not exist in pigeons, create it
      unless pigeons[name]
        pigeons[name] = {}
      end

      #if attribute does not exist under the current name in pigeons, create it
      unless pigeons[name][attr_name]
        pigeons[name][attr_name] = []
      end
      # if attribute value does not exist within attribute of current name, shovel to array
      pigeons[name][attr_name] << attr_value.to_s
    end
  end
end
end

#def nyc_pigeon_organizer(data)
#  data.each({}) do |attributes, pigeons|
#    puts "Attributes"
#    pp attributes
#    attributes.reduce({}) do |memo, (key, value)|
#      puts "Attr_Options"
#      pp attr_options
#      attr_options.each() do |names, pigeons|
#        puts "Names"
#        pp names
#        string_name = name.toString()
#        pigeons[string_name] = {}
#      end
#    end
#  end
#end

#  pp data
 # data.reduce({}) do |pigeons, (attribute, options)|
  #  p attribute
   # p options
#    value.reduce({}) do | attributes, (options, names)|
 #     p options
  #    p names
   #   value.map(name) do |options, names|
    #    p name
     #   p names
    #    options
    #  end
    #  attributes
  #  end
  #  pigeons
#  end
#end

