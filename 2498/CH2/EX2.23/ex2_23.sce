// Exa 2.23
clc;
clear;
close;
format('v',6)
// Given data
Vm  = 15;// in V
// The output voltage 
Vdc = (2*sqrt(2)*Vm)/%pi;// in V
disp(Vdc,"The output voltage in V is");
R_L = 5;// in ohm
Idc = Vdc/R_L;// in A
disp(Idc,"The current in A is");
L = 50;// in mH
L = L * 10^-3;// in H
C = 1000;// in µF
C = C * 10^-6;// in F
f = 50;// in Hz
omega = 2*%pi*f;// in rad/sec
// The ripple factor 
Gamma = 1/( 6*sqrt(2)*(omega^2)*L*C );
disp(Gamma,"The ripple factor is");
// Im =Vm/X_L = (Vm*sqrt(2))/(2*%pi*f*L);
Im = (Vm*sqrt(2))/(2*%pi*f*L);// in A
I_Lmin = Im;// in A
// The maximum value of R_L 
R_Lmax = Vdc/I_Lmin;// in ohm
disp(R_Lmax,"The maximum value of R_L in ohm is");
