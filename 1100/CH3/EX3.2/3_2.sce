clc
//initialisation of variables
m=5 //lb
T1=1540 +460 //R
T2=540+460 //R
//CALCULATIONS
function [cp]=cp(T)
    cp=0.248+0.448*10^-8 *T*T
endfunction
Q=m*intg(T1,T2,cp)
//Results
printf ('Net heat transferred to the system = %.2f Btu',Q)
