// Example 8_9
clc;funcprot(0);
// Given data
P_1=10;// kPa
P_2=2;// MPa
T_3=600;// °C
n_T=80/100;// The efficiency of the turbine

// Calculation
// From the steam tables we find
h_2=192;// kJ/kg
h_1=h_2;// kJ/kg
h_3=3690;// kJ/kg
s_3=7.7032;// kJ/kg.K
s_4a=s_3;// kJ/kg.K
s_f4a=0.6491;// kJ/kg.K
s_fg4a=7.5019;// kJ/kg.K
x_4a=(s_4a-s_f4a)/s_fg4a;// The quality of steam at state 4'
h_f4a=192;// kJ/kg
h_fg4a=2393;// kJ/kg
h_4a=h_f4a+(x_4a*h_fg4a);// kJ/kg
w_a=n_T*(h_3-h_4a);// kJ/kg
q_B=h_3-h_2;// kJ/kg
n=w_a/q_B;// The cycle efficiency
h_4=h_3-w_a;// kJ/kg
// The temperature is interpolated to be
T_4=(((2692-2688)/(2783-2688))*(150-100))+100;// °C
printf("\nThe cycle efficiency,n=%0.3f or %2.1f percentage. \nThe temperature of steam at tthe turbine outlet,T_4=%3.0f°C",n,n*100,T_4);
