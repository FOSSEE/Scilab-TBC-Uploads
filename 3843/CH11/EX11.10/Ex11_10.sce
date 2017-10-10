// Example 11_10
clc;funcprot(0);
// Given data
T_1=5;// °C
T_2=25;// °C
phi_1=40/100;// The relative humidity at state 1
phi_2=40/100;// The relative humidity at state 2
V=60;// m^3/min
P=100;// kPa
P_g1=0.872;// kPa
R_a=0.287;// kJ/kg.K

// Calculation
// (a)
P_a1=P-(phi_1*P_g1);// kPa
rho_a1=P_a1/(R_a*(T_1+273));// kg/m^3
mdot_a=(V/60)*rho_a1;// The mass flux of dry air in kg/s
// Using psychrometric chart
h_1=10;// kJ/kg air
h_2=31;// kJ/kg air
Q=mdot_a*(h_2-h_1);// The rate of heat transfer in kJ/s
// (b)
w_2=0.0021;// kgH2O/kg dry air
w_3=0.008;// kgH2O/kg dry air
mdot_s=(w_3-w_2)*mdot_a;// The rate of steam supplied in kg/s
// (c)
h_2=31;// kJ/kg
h_3=45;// kJ/kg
h_s=(mdot_a/mdot_s)*(h_3-h_2);// kJ/kg
h_fs=604.7;// kJ/kg
h_fgs=2133.8;// kJ/kg
x_s=(h_s-h_fs)/h_fgs;// The state of the steam introduced
printf("\n(a)The rate of heat transfer,Q=%2.1f kJ/s \n(b)The rate of steam supplied,mdot_s=%0.4f kg/s \n(c)The state of the steam introduced,x_s=%0.2f",Q,mdot_s,x_s);
