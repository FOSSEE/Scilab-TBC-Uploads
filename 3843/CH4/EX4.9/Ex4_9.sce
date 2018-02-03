// Example 4_9
clc;funcprot(0);
// Given data
x=70/100;// The quality of steam
p_1=200;// kPa
p_2=800;// kPa
V=2;// m^3
v_f=0.0011;// m^3/kg
v_fg=0.8857;// m^3/kg
u_f1=504.5;// kJ/kg
u_fg1=2529.5;// kJ/kg

// Calculation
v=v_f+(x*(v_fg-v_f));// m^3/kg
m=V/v;// The mass in kg
u_1=u_f1+(x*(u_fg1-u_f1));// The internal energy at state 1 in kJ/kg
// From the steam tables at 800 kPa we find by extrapolation
v_1=v;// m^3/kg
v_2=v_1;// m^3/kg
u_2=((0.6203-0.6181)/(0.6181-0.5601))*(3661-3476);// kJ/kg
Q=m*(u_2-u_1);// kJ
printf("\nThe heat transfer,Q=%4.0f kJ",Q);
// The answer provided in the textbook is wrong
