//Example6_34  // To design a phase shifter
clc;
clear;
close;
f = 2*10^3 ;
PS = -135 ;
// the phase shift
// PS = -2*atand(2*%pi*R*C);
//RC = 192.1*10^-6 ;
C = 0.1*10^-6 ;
R = (192.1*10^-6)/C
disp('The value of resistance is = '+string(R)+ ' ohm');

