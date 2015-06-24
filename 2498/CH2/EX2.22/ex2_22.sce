// Exa 2.22
clc;
clear;
close;
format('v',7)
// Given data
V_L = 25;// in V
I_L = 200;// in mA
I_L = I_L * 10^-3;// in A
R_L = V_L/I_L;// in ohm
Gamma = 3/100;
//Gamma = 1/(6*sqrt(2)*(omega^2)*L*C);
f = 50;// in Hz
omega = 2*%pi*f;// in rad/sec
//LC = 1/( 6*sqrt(2)*(omega^2)*Gamma )
L = R_L/(3*omega);// in H
disp(L,"The value of L in H is");
C = 1/( 6*sqrt(2)*(omega^2)*Gamma*L );// in F
C = C * 10^6;// in µF
disp(C,"The value of C in µF is");
