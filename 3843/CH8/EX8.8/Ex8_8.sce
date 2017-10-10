// Example 8_8
clc;funcprot(0);
// Given data
P_1=0.01;// MPa
P_3=0.2;// MPa
P_4=4;// MPa
P_5=30;// MPa
T_6=600;// °C
T_8=T_6;// °C
T_10=350;// °C
mdot=1;// kg/s

// Calculation
// The enthalpies are found frrom the steam tables to be
h_1=192;// kJ/kg
h_2=h_1;// kJ/kg
h_4=1087;// kJ/kg
h_5=h_4;// kJ/kg
h_8=3674;// kJ/kg
h_3=505;// kJ/kg
h_6=3444;// kJ/kg
h_10=3174;// kJ/kg
s_6=6.2339;// kJ/kg.K
s_7=s_6;// kJ/kg.K
h_7=(((6.2239-6.0709)/(6.3622-6.0709))*(2961-2801))+2801;// kJ/kg
s_8=7.3696;// kJ/kg.K
s_9=s_8;// kJ/kg.K
h_9=(((6.2239-6.0709)/(6.3622-6.0709))*(2961-2801))+2801;// kJ/kg
s_10=8.0636;// kJ/kg.K
s_11=s_10;// kJ/kg.K
s_f11=0.6491;// kJ/kg.K
s_fg11=7.5019;// kJ/kg.K
x_11=(s_11-s_f11)/s_fg11;// The quality of steam at state 11
h_f11=192;// kJ/kg
h_fg11=2393;// kJ/kg
h_11=h_f11+(x_11*h_fg11);// kJ/kg
mdot7=(h_5-h_3)/(h_7-h_3);// kg/s
mdot9=(((1-mdot7)*h_3)-h_2+(mdot7*h_2))/(h_9-h_2);// kg/s
W_T=((mdot)*(h_6-h_7))+((1-mdot7)*(h_8-h_9))+((1-mdot7-mdot9)*(h_10-h_11));// The power from the turbine in kW
Q_B=((mdot)*(h_6-h_5))+((1-mdot7)*(h_8-h_7))+((1-mdot7-mdot9)*(h_10-h_9));// The boiler energy input in kW
n=W_T/Q_B;// The cycle efficiency 
printf("\nThe maximum possible cycle efficiency,n=%0.3f or %2.1f percentage.",n,n*100);
