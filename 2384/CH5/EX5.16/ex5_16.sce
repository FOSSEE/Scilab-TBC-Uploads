// Exa 5.16
clc;
clear;
close;
format('v',7)
// Given data
P = 18;// in kW
P= P*10^3;// in W
I_L = 60;// in A
V_L = 440;// in V
f= 50;// in Hz
// P = sqrt(3)*V_L*I_L*cosd(phi);
phi= acosd(P/(sqrt(3)*V_L*I_L));// in °
I_L= I_L*expm(phi*%pi*%i/180);// in A
I_Ph= I_L;// in A
V_Ph= V_L/sqrt(3);// in V
Z_Ph= V_Ph/I_Ph;// in ohm
R= real(Z_Ph);// in ohm
XC=abs(imag(Z_Ph));// in ohm
C = 1/(2*%pi*f*XC);// in F
C=C*10^6;// in µF
// Power factor
pf= cosd(phi);// lead
disp("The power factor is : "+string(pf)+" leading")
disp(R,"The resistance in Ω is : ")
disp(C,"The capacitance in µF is : ");
disp("The load is capacitive in nature.")
