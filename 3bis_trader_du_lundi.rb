def trader_du_dimanche (array)

        jours = array.length

        meilleurs_scenarios=[]

        (0..(jours-2)).each do |i|
        
        meilleur_scenario = {
            'jour_achat' =>i, 'prix_achat' => array[i],'jour_vente' => i,
            'prix_vente' => array[i], 'plus_value' => 0
        }
        
        ((i+1)..(jours-1)).each do |j|
            
                if array[j]-array[i] > meilleur_scenario['plus_value']
                    meilleur_scenario['jour_vente'] = j 
                    meilleur_scenario['prix_vente'] = array[j]
                    meilleur_scenario['plus_value'] = array[j]-array[i]
                end
        
        end
        
        meilleurs_scenarios << meilleur_scenario
    
        end
        
        meilleur_jour=[0,0] 

        meilleurs_scenarios.each do |l|

                if l['plus_value'] > meilleur_jour[1]
                    meilleur_jour[0] = l['jour_achat']
                    meilleur_jour[1] = l['plus_value']
                end

        end

        puts meilleurs_scenarios[meilleur_jour[0]]

end

trader_du_dimanche([17, 3, 6, 9, 15, 8, 6, 1, 10])

def trader_du_lundi (array_entreprise)

		entreprises = array_entreprise[0].keys

		nombre_jours = array_entreprise.length

		entreprises.each do |entr|
		 	
			 	valeurs_entreprise = []
			 	
			 	(0..(nombre_jours-1)).each do |i|

			 	valeurs_entreprise << array_entreprise[i][entr]

			 	puts "Le meilleur scénario d'achat et de vente pour #{entr} est"
			 	trader_du_dimanche(valeurs_entreprise)
			 	end

		 end

end

trader_du_lundi ([
    { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8,  :KO => 10, :XOM => 20, :GPS => 7,  :MCD => 11, :DIS => 15, :CRM => 6,  :JNJ => 10 },
    { :GOO => 8,  :MMM => 20, :ADBE => 3,  :EA=> 10, :BA => 5,  :KO => 19, :XOM => 12, :GPS => 6,  :MCD => 15, :DIS => 9,  :CRM => 10, :JNJ => 17 },
    { :GOO => 3,  :MMM => 8,  :ADBE => 15, :EA=> 5,  :BA => 10, :KO => 5,  :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5,  :JNJ => 14 },
    { :GOO => 17, :MMM => 3,  :ADBE => 6,  :EA=> 9,  :BA => 15, :KO => 6,  :XOM => 8,  :GPS => 1,  :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3  },
    { :GOO => 8,  :MMM => 18, :ADBE => 4,  :EA=> 6,  :BA => 15, :KO => 18, :XOM => 3,  :GPS => 12, :MCD => 19, :DIS => 3,  :CRM => 7,  :JNJ => 9  },
    { :GOO => 10, :MMM => 12, :ADBE => 8,  :EA=> 3,  :BA => 18, :KO => 20, :XOM => 5,  :GPS => 11, :MCD => 3,  :DIS => 9,  :CRM => 8,  :JNJ => 15 },
    { :GOO => 17, :MMM => 14, :ADBE => 2,  :EA=> 17, :BA => 7,  :KO => 13, :XOM => 1,  :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9,  :JNJ => 17 }
    ]);