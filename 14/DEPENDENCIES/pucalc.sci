//x2 = pucalc(pu_Z_given,base_kV_given,base_kV_new,base_kVA_new,base_kVA_given)
function [X11]=pucalc(pu_Z_given,base_kV_given,base_kV_new,base_kVA_new,base_kVA_given)
    X11=(pu_Z_given * (base_kV_given/base_kV_new)^2 * (base_kVA_new/base_kVA_given));
endfunction
