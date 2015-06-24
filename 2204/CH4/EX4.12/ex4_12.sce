//Exa 4.12
clc;
clear;
close;
// Given data
Vin=10;// in V
R= 2.2;// in kΩ
R= R*10^3;// in Ω
T= 1;// in ms
T= T*10^-3;// in sec
C= 1;// in µF
C= C*10^-6;// in F
gain= 10^5;// differential voltage gain
I= Vin/R;// in A
V= I*T/C;// in V
disp(V,"The capacitor voltage at the end of the pulse in volts is : ")
RC_desh= R*C*gain;// in sec
disp(RC_desh,"The closed loop time constant in sec is : ")
