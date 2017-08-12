function [ output_args ] = getParetoFronts( ATTACK_ACTIONS,DEFENCE_ACTIONS, G, Player )
%GETPARETOFRONTS Summary of this function goes here
%   Detailed explanation goes here


PARETO_FRONTS = cell(length(ATTACK_ACTIONS),3);


for n = 1: length(DEFENCE_ACTIONS)
    
    for m = 1: length(ATTACK_ACTIONS)
        
        for o = 1: length(ATTACK_ACTIONS)
            
            if m ~= o
                
               current_attack_reward = ATTACK_ACTIONS{m,2};
               alt_attack_reward = ATTACK_ACTIONS{o,2};
               defence_attack_reward = DEFENCE_ACTIONS{n,2};
               
               combined_current_reward = current_attack_reward - defence_attack_reward;
               combined_alt_reward = current_attack_reward - defence_attack_reward;
               
               if(combined_current_reward <= combined_alt_reward) {
                   
                   }
            end
               if (current_attack_reward >= defence_attack_reward) && (alt_attack_reward >= defence_attack_reward) 
                   
                   PARETO_FRONTS{m,2} = current_attack_reward;
                   PARETO_FRONTS{m,1} = ATTACK_ACTIONS{m,1};
                   PARETO_FRONTS{m,3} = defence_attack_reward;
                   
               end
        end 
    end
end

for n = 1: length(DEFENCE_ACTIONS)
    
end



end

