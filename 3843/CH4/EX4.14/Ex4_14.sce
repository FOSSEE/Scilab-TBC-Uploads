// Example 4_14
clc;funcprot(0);
// Given data
P_1=4000;// kPa
T_1=500;// °C
d_1=50;// mm
V_1=200;// m/s
d_2=250;// mm
x_2=1.0;// The quality of steam at state 2

// Calculation
// (a)
v_1=0.08643;// m^3/kg
A_1=(%pi/4)*(d_1/1000)^2;// m^2
mdot=(1/v_1)*A_1*V_1;// kg/s
// The enthalpies are found from Tables C-3 and C-2 to be
h_1=3445.2;// kJ/kg
h_2=2665.7;// kJ/kg
W_T=-(h_2-h_1)*mdot;// The turbine power output in kJ/s
// (b)
v_2=2.087;// m^3/kg
A_2=(%pi/4)*(d_2/1000)^2;/// m^2
V_2=(A_1*V_1*(1/v_1))/(A_2*(1/v_2));// m/s
d_KE=mdot*((V_2^2-V_1^2)/2);// The kinetic energy change in J/s
printf("\n(a)The turbine power output,W_T=%4.0f kJ/s or %1.3f MW \n(b)The kinetic energy change,delKE=%4.0f J/s or %1.2f kJ/s",W_T,W_T/10^3,d_KE,d_KE/10^3);
