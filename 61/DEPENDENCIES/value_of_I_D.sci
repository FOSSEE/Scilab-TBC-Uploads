//value of I_D
function [i_d]= value_of_I_D(I_DSS,V_GS,V_GS_off)
    i_d=I_DSS*(1-(V_GS/V_GS_off))^2;
endfunction