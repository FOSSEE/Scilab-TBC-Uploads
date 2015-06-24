clc
//Initialization of variables
m=5 //lb
T1=1540+460  //R
T2=540+460  //R
//calculations
function [cp]=q(T)
    cp=m*(0.248+0.448*10^-8 *T^2)
endfunction
Q=intg(T1,T2,q)
//results
printf("Heat transferred = %d Btu",Q)
