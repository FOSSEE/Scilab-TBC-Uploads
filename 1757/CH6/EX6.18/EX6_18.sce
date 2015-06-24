//Example6.18  // To determine the output voltage of integrator
clc;
clear;
close;
Vin = 1 ;
R = 150*10^3 ;//  ohm
C = 1*10^-9 ; // F

// the output voltage of an integrator is given as
//Vo = (fc/f)*Vin ;

//fc = 1/(2*%pi*R*C);

//Vo = (1/(2*%pi*R*C*f))*Vin;

//for the frequency f = 10 Hz  the output is
f = 10 ; // Hz
Vo = (1/(2*%pi*R*C*f))*Vin;
disp('for the frequency f = 10 Hz  the output is = '+string(Vo)+ ' V ');

//for the frequency f = 1000 Hz  the output is
f = 1000 ; // Hz
Vo = (1/(2*%pi*R*C*f))*Vin;
disp('for the frequency f = 1000 Hz  the output is = '+string(Vo)+ ' V ');

//for the frequency f = 10000 Hz  the output is
f = 10000 ; // Hz
Vo = (1/(2*%pi*R*C*f))*Vin;
disp('for the frequency f = 10000 Hz  the output is = '+string(Vo)+ ' V ');

