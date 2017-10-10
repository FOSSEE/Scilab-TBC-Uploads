// Example 3_2
clc;funcprot(0);
// Given data
d=110/10^3;// The diameter of the cylinder in m
V_1=100;// The volume of the water in cm^3
m=50;// kg
g=9.81;// The acceleration due to gravity in m/s^2
P_atm=1*10^5;// Pa

// Calculation
A=(%pi*d^2)/4;// m^2
P=((m*g)/A)+P_atm;// Pa
V_1=V_1*10^-6;// m^3
v_1=0.001017;// m^3/kg
m=V_1/v_1;// kg
v_2=1.444;// m^3/kg
V_2=m*v_2;// m^3
W=P*(V_2-V_1);// The work done in J
printf("\nThe work done,W=%5.0f J or %2.1f kJ",W,W/10^3);
