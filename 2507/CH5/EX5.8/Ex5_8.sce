clc
clear
printf("Example 5.8 | Page number 129 \n\n");
//Redo example 5.7 for heat loss 10% of heat transferred
mh = 9.45 // kg/s // flow rate of steam
h_h2 = 140 // kJ/kg // enthalpy of condensate
h_h1 = 2570 // kJ/kg // inlet enthalpy of steam
t1 = 25 // °C //inlet temperature of cooling water
t2 = 36 // °C //exit temperature of cooling water
c = 4.189 // kJ/kg deg // specific heat of water
fractionalheatloss = 0.1 // fractional heat loss
//Solution
mc = -1*((1-fractionalheatloss)*mh*(h_h2-h_h1))/(c*(t2-t1)) // kg/s //mass flow rate of cooling water
printf("Mass flow rate of cooling water = %.1f kg/s",mc)
