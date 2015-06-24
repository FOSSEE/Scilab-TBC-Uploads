// Example 4.7
clc;
clear;
close;
format('v',6);
// Given data
Vin= 10;// in V
R= 2.2;// in kΩ
R= R*10^3;// in kΩ
Ad= 10^5;// differential voltage gain
C=1;// in µF
C= C*10^-6;// in F
T= 1;// in ms
T= T*10^-3;// in s
I= Vin/R;// in mA
V= I*T/C;// output voltage at the end of pulse in mV
V= V*10^-3;// in V
disp(V,"The output voltage at the end of the pulse in volts is : ")
RC_desh= R*C*Ad;// closed-loop time constant in sec.
disp(RC_desh,"The closed-loop time constant in seconds : ")




