clc
//initialization of variables
P1=30 //lb/in^2
T1=300+460 //R
T2=60 +460 //R
cp=0.25 //B/lbm F
R=53.3 //ft-lb/lbm R
//calculations
Q=cp*(T2-T1)
du=(cp-R/778)*(T2-T1)
W=778*(Q-du)
function [ds]=c(T)
    ds=cp/T
endfunction
S=intg(T1,T2,c)
//results
printf("Change in entropy = %.3f B/lbm R",S)
