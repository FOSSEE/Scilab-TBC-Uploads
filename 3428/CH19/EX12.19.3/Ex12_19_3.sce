//Section-12,Example-3,Page no.-SS.59
//To calculate the current produced in a small germanium plate.
clc;
n_i=2*10^19                         //per m^3
e=1.6*10^-19                         //coulombs
u_e=0.36                               //m^2/Vsec
u_h=0.17                                 //m^2/Vsec
V=2                                     //V
l=(0.3*10^-3)                      //m
A=1*10^-4                               //m^2
I=(n_i*e*(u_e+u_h)*V*A)/l
disp(I,'Current produced in a small germanium plate(Amp)')
