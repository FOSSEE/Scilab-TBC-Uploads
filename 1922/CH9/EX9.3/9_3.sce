clc
clear
//Initialization of variables
R=8.3143
T1=1273 //K
T2=2273 //K
k2=0.0018
A=123.94
B=7.554
C=8.552*10^-3
D=-13.25e-6
E=7.002e-9
F=13.494e-13
//calculations
function y= cp(T)
    y=A/T^2 +B/T +C +D*T +E*T^2 -F*T^3
endfunction
lnk=1/R *intg(T1,T2,cp)
k1=k2/ exp(lnk)
//results
printf("Equilibrium constant = %.5f ",k1)
