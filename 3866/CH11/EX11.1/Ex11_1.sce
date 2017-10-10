clc; clear; close;

t=10;//in years
A=2*(10^7);//in hr-cm^2/amp
delH=0.85;//in eV
T=398;//in kelvin
t50=10*t*365*24;
k=8.62*(10^(-5));
Jmax=sqrt(A*exp(delH/(k*T))/t50);
disp(Jmax,'max tolerable current density for electromigration(in A/cm^2)=');
//the answer given in the textbook is wrong
