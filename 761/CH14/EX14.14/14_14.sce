clc;
//page no 492
//prob no. 14.14
Zo=50;//line impedance in ohm
ZL=75+%i*25;
// the requirment of this is simply to match the 50ohm line to the impedsnce at this point on the line,which is 88.38 ohm,resistive.
Z2=88.38;//in ohm
//The required turn ratio is
N1_N2=sqrt(Zo/Z2);
disp(N1_N2,'The required turn ratio is');