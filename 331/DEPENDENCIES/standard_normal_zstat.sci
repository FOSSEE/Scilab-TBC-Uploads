function [z]=standard_normal_zstat(alpha) 
    if (alpha ==0.05) then
        z = 1.64;
    elseif (alpha==0.005) then
        z = 2.57;
    elseif (alpha==0.10) then
        z = 1.28;
    elseif (alpha==0.01) then
        z = 2.33;
    elseif (alpha==0.025) then
        z = 1.96;
    end
endfunction