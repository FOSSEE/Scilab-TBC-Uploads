clc
//initialization of variables
cpm=0.2523
Rm=54.7
T1=60+460 //R
T2=400+460 //R
//calculations
cvm=cpm-Rm/778
Q=cpm*(T2-T1)
W=Rm*(T2-T1)
//Rm is divided and multiplied by 778.!
function [cp]=s(T)
    cp=cpm/T
endfunction
ds=intg(T1,T2,s)
//results
printf("Entropy change = %.4f B/lbm ",ds)
printf("\n specific work = %d ft-lb/lbm",W)
printf("\n Heat added per pound of mixture = %.1f B/lbm",Q)
