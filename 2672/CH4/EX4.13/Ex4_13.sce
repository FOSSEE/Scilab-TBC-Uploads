//Example 4_13
clc;
clear;
close;
format('v',9)
//given data : 
n0=7.87*10^28;//m^-3
mu=35.2;//cm^2/vs
E0=30*10^2;//V/m
h=1.05*10^-34;//Js//Planks Constant
e=1.6*10^-19;//C///Charge on electron
//Part (a)
sigma=n0*e*mu*10^-4;//s/m
disp(sigma,"(a) Conductivity(s/m)");
//Part (b)
V0=E0*mu*10^-4;//m/s
disp(V0,"(b) Drift velocity of electron(m/s)");
J=sigma*E0;//A/m^3
disp(J,"(b) Current density(A/m^3)")
//Answer given in the textbook is not accurate.
