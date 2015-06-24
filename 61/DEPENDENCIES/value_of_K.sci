//VALUE OF K
function [k]=value_of_K(I_D_on,V_GS,V_GS_th)
          k=I_D_on/((V_GS-V_GS_th)^2)
endfunction