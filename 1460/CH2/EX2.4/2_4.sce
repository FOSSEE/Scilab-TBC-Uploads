clc
//initialization of variables
T1=500  //R
T2=1060 //R
w=1 //lbm
//calculations
function [cv]= v(T)
    cv=0.258-120/T +40000/T^2
endfunction
Q=intg(T1,T2,v)
cvm=Q/(T2-T1)
//results
printf("Mean specific heat = %.3f B/lbm F",cvm)
