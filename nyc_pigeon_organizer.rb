require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do | data_k, data_v| 

    data[data_k].each do | attributes, birds |

      birds.each do | bird |

        if new_hash[bird]

          if new_hash[bird][data_k]
            new_hash[bird][data_k] << attributes.to_s
          else 
            new_hash[bird][data_k] = [attributes.to_s]
          end

        else
          new_hash[bird] = {data_k => [attributes.to_s]}

        end 

      end 

    end 

  end 

  return new_hash
end

