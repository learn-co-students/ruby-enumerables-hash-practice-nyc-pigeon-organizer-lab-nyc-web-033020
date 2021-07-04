def nyc_pigeon_organizer(data)
  new_hash ={}
  data.each do |c_g_l, values|
    values.each do |diff, all_names|
      all_names.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end
        if new_hash[name][c_g_l] == nil
          new_hash[name][c_g_l] = []
        end
        new_hash[name][c_g_l].push(diff.to_s)
      end
    end
  end
  new_hash
end
