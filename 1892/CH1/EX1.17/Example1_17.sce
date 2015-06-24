// Example 1.17

clear; clc; close;

format('v',6);
// Given data
Z1=0.07+%i*0.4;//in ohm
Z2dash=0.08+%i*0.2;//in ohm
V1_line=200;//in volt

//Calculations
R1=real(Z1);//in ohm
X1=imag(Z1);//in ohm
R2dash=real(Z2dash);//in ohm
X2dash=imag(Z2dash);//in ohm
R1e=R1+R2dash;//in ohm
X1e=X1+X2dash;//in ohm
Z1e=R1e+%i*X1e;//in ohm
Z1e_mag=abs(Z1e);//magnitude of Z1e in ohm
V1PerPhase=V1_line/sqrt(3);//in volt
Pout_max=3*V1PerPhase^2/2/(R1e+Z1e);//
S=R2dash/(R2dash+Z1e_mag);//
disp(S*100,"Slip in % : ")
