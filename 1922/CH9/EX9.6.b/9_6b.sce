clc
clear
//Initialization of variables
C=3
phi=1
R=1
Sc=1
function V=fun(C,phi,R,Sc)
    V=2+C-phi-R-Sc
endfunction
//calculations
V=fun(C,phi,R,Sc)
//results
printf("Degrees of freedom = %d ",V)

