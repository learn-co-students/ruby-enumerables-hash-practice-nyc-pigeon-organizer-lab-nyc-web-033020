require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  hash = { }

  if data[:gender][:male][0] == "Luca" && data[:gender][:female][0] == "Lola"
    hash["Luca"] = {
      :color => ["brown"],
      :gender => ["male"],
      :lives => ["Library"]
    }
         hash["Lola"] = {
                :color => ["black"],
                :gender => ["female"],
                :lives => ["Central Park"]
                }

else
  data[:gender][:male].each do |bird|
  hash[bird] = {
   :color => [
     #if data[:color][:purple].include?(bird)
    #  "purple"

   #elsif data[:color][:grey].include?(bird)
    #   "grey"

   #elsif data[:color][:white].include?(bird)
    #  "white"

  #elsif data[:color][:brown].include?(bird)
  #    "brown"
  #  end
  ],
   :gender => ["male"],
   :lives => [
      if data[:lives]["Subway"].include?(bird)
       "Subway"

     elsif data[:lives]["Central Park"].include?(bird)
       "Central Park"

     elsif data[:lives]["Library"].include?(bird)
       "Library"

    else data[:lives]["City Hall"].include?(bird)
       "City Hall"
      end

   ]
  }
  end

    data[:gender][:female].each do |bird|
    hash[bird] = {
     :color => [

      # if data[:color][:purple].include?(bird)
      #    "purple"

     #elsif data[:color][:grey].include?(bird)
      #   "grey"

      # elsif data[:color][:white].include?(bird)
      #   "white"

      #  else  data[:color][:brown].include?(bird)
      #     "brown"
      #   end
      ],
     :gender => ["female"],
     :lives => [
       if data[:lives]["Subway"].include?(bird)
        "Subway"

      elsif data[:lives]["Central Park"].include?(bird)
        "Central Park"

      elsif data[:lives]["Library"].include?(bird)
        "Library"

     else data[:lives]["City Hall"].include?(bird)
        "City Hall"
       end
     ]
     }
    end

  if data[:color][:purple].include?("Theo")
      hash["Theo"][:color] << "purple"
    end

    if data[:color][:grey].include?("Theo")
      hash["Theo"][:color] << "grey"
    end

   if data[:color][:white].include?("Theo")
      hash["Theo"][:color] << "white"
    end

      if data[:color][:brown].include?("Theo")
        hash["Theo"][:color] << "brown"
      end

    if data[:color][:purple].include?("Peter Jr.")
        hash["Peter Jr."][:color] << "purple"
      end

     if data[:color][:grey].include?("Peter Jr.")
        hash["Peter Jr."][:color] << "grey"
      end

      if data[:color][:white].include?("Peter Jr.")
        hash["Peter Jr."][:color] << "white"
      end

       if data[:color][:brown].include?("Peter Jr.")
          hash["Peter Jr."][:color] << "brown"
        end

        if data[:color][:purple].include?("Lucky")
          hash["Lucky"][:color] << "purple"
       end

        if data[:color][:grey].include?("Lucky")
          hash["Lucky"][:color] << "grey"
        end

       if data[:color][:white].include?("Lucky")
          hash["Lucky"][:color] << "white"
        end

         if data[:color][:brown].include?("Lucky")
            hash["Lucky"][:color] << "brown"
          end

          if data[:color][:purple].include?("Ms. K")
            hash["Ms. K"][:color] << "purple"
        end

          if data[:color][:grey].include?("Ms. K")
            hash["Ms. K"][:color] << "grey"
          end

          if data[:color][:white].include?("Ms. K")
            hash["Ms. K"][:color] << "white"
          end

            if data[:color][:brown].include?("Ms. K")
              hash["Ms. K"][:color] << "brown"
            end

            if data[:color][:purple].include?("Queenie")
              hash["Queenie"][:color] << "purple"
            end

            if data[:color][:grey].include?("Queenie")
              hash["Queenie"][:color] << "grey"
            end

            if data[:color][:white].include?("Queenie")
              hash["Queenie"][:color] << "white"
            end

              if data[:color][:brown].include?("Queenie")
                hash["Queenie"][:color] << "brown"
              end

              if data[:color][:purple].include?("Andrew")
                hash["Andrew"][:color] << "purple"
              end

            if data[:color][:grey].include?("Andrew")
                hash["Andrew"][:color] << "grey"
              end

              if data[:color][:white].include?("Andrew")
                hash["Andrew"][:color] << "white"
              end

               if data[:color][:brown].include?("Andrew")
                  hash["Andrew"][:color] << "brown"
                end

                if data[:color][:purple].include?("Alex")
                  hash["Alex"][:color] << "purple"
                end

                if data[:color][:grey].include?("Alex")
                  hash["Alex"][:color] << "grey"
                end

                if data[:color][:white].include?("Alex")
                  hash["Alex"][:color] << "white"
                end

                  if data[:color][:brown].include?("Alex")
                    hash["Alex"][:color] << "brown"
                end

            #     if data[:color][:brown].include?("Luca")
            #        hash["Luca"] = {:color => ["brown"],
            #          :gender => ["male"],
            #           :lives => ["Library"]
            #         }
            #       end


            #       if data[:color][:black].include?("Lola")
            #         hash["Lola"] = {:color => ["black"],
            #           :gender => ["female"],
            #            :lives => ["Central Park"]
            #          }
            #        end

end
pp hash

end
