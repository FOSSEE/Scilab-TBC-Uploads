// Exa 6.1
clc;
clear;
close;
// Given data
V= 100;// in volt
I=5;// in mA
I=I*10^-3;// in amp
VS= 1000;// sensitivity of voltmeter in ohm
VR= 150;// voltmeter range in volt
Rv= VS*VR;// in ohm
// Part (i)
Rm= V/I;// in ohm
Rm= Rm*10^-3;// in kohm
disp(Rm,"Apparent value of unknown resistor in kohm");

// Part (ii)
Rx= V/(I*(1-V/(I*Rv)));// in ohm
Rx= Rx*10^-3;/// in kohm
disp(Rx,"Actual value of unknown resistor in kohm")

// Part (iii)
epsilon_r= (Rm-Rx)/Rx*100;// in %
disp(epsilon_r,"Error percentage due to loading effect of voltmeter");
