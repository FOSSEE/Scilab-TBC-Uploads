//EXAMPLE 8.5
//page 228
clc;
// Initialisation of Variables
D0=0.40;........//Let’s assume that the starting diameter of the copper wire in in.
Df=0.20;........// Diameter of the copper wire to be produced in in.
sigma1=22000;..........//Yeidl strength at 0% cold work
//CALCULATIONS
CW=((D0^2-Df^2)/D0^2)*100;.........//The fianal Cold Work in percent
F=sigma1*(%pi/4)*D0^2;........//The draw force required to deform the initial wire in lb
sigma2=F/((%pi/4)*Df^2);.....// The stress acting on the wire after passing through the die in psi
disp(CW,"The fianal Cold Work in percent:")
disp(F,"The draw force required to deform the initial wire in lb:")
disp(sigma2,"The stress acting on the wire after passing through the die in psi:")


