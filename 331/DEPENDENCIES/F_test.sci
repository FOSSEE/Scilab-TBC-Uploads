function [F]=F_test(Alpha,Test)
    if Alpha ==0.05 then
        if (Test==1 |Test==2) then
            F = 2.65
        else
            F = [0.403,2.62]
        end
        
    elseif Alpha ==0.01 
            F = 0.176;
    end
endfunction