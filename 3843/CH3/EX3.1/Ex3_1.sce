// Example 3_1
clc;funcprot(0);
// Given data
m=1;// The mass of steam in kg
x=20/100;// The quality of steam
P=200;// kPa
T_2=400;// °C

// Calculation
// Using Table C-2 we find
v_f=0.001061;// m^3/kg
v_g=0.8857;// m^3/kg
v_1=v_f+(x*(v_g-v_f));// m^3/kg
v_2=1.549;// m^3/kg
W=m*P*(v_2-v_1);// kJ
printf("\nThe work done by the steam,W=%3.1f kJ",W);
