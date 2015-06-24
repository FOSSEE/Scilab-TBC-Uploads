clc;clear;
//Example 16.3

//given data
B=0.75;//magnetic flux intensity in Wb/m^2
m1=1.67*10^-27;//mass in Kg
m2=3.31*10^-27;//mass in Kg
e=1.6*10^-19;//the charge on electron in C
Rm=2;//radius in m

//calculations
Q=e;
Emax=3.12*10^12*B^2*Q^2*Rm^2/m1;
disp(Emax,'Maximum energies in Mev for proton');
Emax=3.12*10^12*B^2*Q^2*Rm^2/m2;
disp(Emax,'Maximum energies in Mev for deuteron')