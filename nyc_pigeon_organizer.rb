def nyc_pigeon_organizer(data)
  new_list = {}
  data.each do |key,values|
    values.each do |value,names|
      names.each do |name|
        new_list[name] ||= {}
        new_list[name][key] ||= []
        new_list[name][key] << value.to_s
      end
    end
  end
  new_list
end
