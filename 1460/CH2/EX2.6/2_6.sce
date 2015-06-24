clc
//initialization of variables
w=1 //lbm
T1=492 //R
T2=672 //R
cp=1 //B/lbm F
//calculations
dQ=cp*(T2-T1)
function [s]=ds(T)
    s=1/T
endfunction
entropy=intg(T1,T2,ds)
//results
printf("Entropy change = %.3f B/lbm R",entropy)
