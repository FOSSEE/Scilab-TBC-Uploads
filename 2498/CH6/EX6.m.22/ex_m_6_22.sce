// Exa Misc. 6.22
clc;
clear;
close;
format('v',6)
// Given data
R_S3 = 10;// in k ohm
R_S2 = R_S3;// in k ohm
R_S1 = R_S3;// in k ohm
Rf = 10;// in k ohm
Vs1 = 0.2;// in V
Vs2 = 0.5;// in V
Vs3 = 0.8;// in V
// I = I1+6I2+I3;
// I = (Vs1/R_S1) + (Vs2/R_S2) + (Vs3/R_S3);
// I = - If;
// Vo = -If*Rf;
Vo = (Rf/R_S1)*(Vs1+Vs2+Vs3);// in V  (as R_S1= R_S2=R_S3)
disp(Vo,"The value of Vo in volts is : ");
disp("But the supply voltage of 10 V is used, so the op-amp will reach in saturation.");
disp("Hence, output voltage is -10 volts.")
