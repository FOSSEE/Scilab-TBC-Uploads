clc;
//page no 461
//prob no. 14.1
//A coaxial cable with capacitance=90pF/m & characteristic impedance=50 ohm
C=90*10^-12;Zo=50;
//Determination of inductance of 1m length
L=(Zo^2)*C;
disp('nH/m',L*10^9,'The inductance of 1m length is');