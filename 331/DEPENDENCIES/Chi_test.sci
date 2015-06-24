function [Chi]= Chi_test(Alpha,Test)
    if Alpha ==0.05 then
        if (Test==1 |Test==2) then
            Chi = 19.675
        else
            Chi = [4.575,19.675]
        end
        
    elseif Alpha ==0.01 
            Chi = 1.239;
    end
endfunction