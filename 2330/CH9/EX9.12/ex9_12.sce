// Example 9.12
format('v',6)
clc;
clear;
close;
// given data
Ta= 70;// ambient temperature in °C
P= 30;// in power dissipation in W
theta_CS= 0.5;// in °C/W
theta_SA= 1.5;// in °C/W
// The case temperature
Tc= Ta+P*(theta_CS+theta_SA);// in °C
// The power rating
P_Dmax= 60;// in W
disp(Tc,"The case temperature in °C is : ");
disp(P_Dmax,"The power rating in watt is : ")
