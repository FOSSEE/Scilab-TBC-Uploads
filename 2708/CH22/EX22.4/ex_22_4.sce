//Example 22.4 // penetration depth
clc;
clear;
//given data :
w=750;// penetration depth in A
T=3.5;// temperature in kelvin
Tc=4.12;// critical temperature in kelvin
d=13.55D3;//density of mercury
N=6.023D23;// avogadro number
M=200D-3;//molecular weight in kg 
wo=w*(1-(T/Tc)^4)^.5;//formula
disp(wo,"penetration depth in A(angstrom)")
//n0=d*N/M;//normal electron density at 0 degre
//n=n0*(1-(T/Tc)^4);//electron density at T
//disp(n)

//according to question the answer is upto Wo only.



