//Example 4_18
clc;
clear;
close;
format('v',6);
//given data : 
h=1.05*10^-34;//Js//Planks Constant
e=1.6*10^-19;//C///Charge on electron
E0=10^4;//V/cm
a=5.62*10^-8;//cm//lattice constant for n-GaAs
kB=2*%pi/a;//cm^-1///Brillouin Edge
tau=h*kB/e/E0*10^12;//ps
disp(tau,"Time taken by electron to reach Brillouin Zone(ps)");
//Answer given in the textbook is wrong
