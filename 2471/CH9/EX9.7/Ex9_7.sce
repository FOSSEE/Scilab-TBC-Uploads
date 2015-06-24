clear ;
clc;
// Example 9.7
printf('Example 9.7\n\n');
printf('Page No. 269\n\n');

//given
l_1 = 240;// existing length of solid brick in mm
l_u = 25;// upgraded internal lining in mm
l_e = 9.5;// Expanded polystyrenne in mm
T_i = 20;// Internal temperature in degre celcius
R_H_i = 50;// Internal Relative humidity in percent
T_e = 0;// External temperature in degre celcius
R_H_e = 90;// External Relative humidity in percent

K = [0.123 0.059 0.714 0.286 0.055];// Thermal resistance in W/m^2-K
V_r = [0.0 0.475 3.57 9.60 0.0];// Vapour Resistance in 10^9 N-s/kg

//Refer Figure 9.3
//From Figure 9.3, the tempeature, dew point, vapour pressure for different interface are obtained
T = [18.01 17.06 5.51 0.89];// Temperature in degree celcius
V_p = [1170 1148 986 550];//Vapour pressure in N/m^2
D_P = [9.5 9.2 7.1 -1.5];// Dew point in degree celcius

h = (T_i - T_e)/sum(K);// in W/m^2
printf('The heat flow is %.2f W/m^2 \n',h)
V_p_i = V_p(1);// Internal vapour pressure in N/m^2
V_p_e = V_p(4);// External vapour pressure in N/m^2
m = ((V_p_i - V_p_e)/sum(V_r))*10^-9;// in  kg/s
printf('The vapour mass flow is %.1e kg/s',m)



