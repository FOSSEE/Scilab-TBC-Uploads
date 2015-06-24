//Example6_43   // Design an integrator circuit
clc;
clear;
close;
A = 10 ;
f =20*10^3 ;
R = 10*10^3 ;  // we assume 
Rf =10*R ;

disp(' THe feedback resistance Rf is = '+string(Rf)+ ' ohm');

// for proper integration f>= 10fa 
fa = f/10 ;
disp('The frequency fa is = '+string(fa)+ ' Hz');

// in practical integrator
//fa = 1/(2*%pi*Rf*C);

C = 1/(2*%pi*Rf*fa);
disp(' The value of capacitor C is = '+string(C)+ ' F ');
