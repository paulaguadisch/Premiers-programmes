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