def nyc_pigeon_organizer(data)
  pidgeon_list = {}
  data.each do |attributes, innerHash|
    innerHash.each do |data, nameArray|
      nameArray.each do |name|

        if !pidgeon_list.has_key?(name)
          pidgeon_list[name] = {}
        end

        if !pidgeon_list[name].has_key?(attributes)
          pidgeon_list[name][attributes] = []
        end

        if !pidgeon_list[name][attributes].include?(data)
          pidgeon_list[name][attributes] << data.to_s
        end

      end
    end
  end

  pidgeon_list
end
