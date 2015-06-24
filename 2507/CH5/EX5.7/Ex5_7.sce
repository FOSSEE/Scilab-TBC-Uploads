clc
clear
printf("Example 5.7 | Page number 128 \n\n");
//Find mass flow rate of cooling water
mh = 9.45 // kg/s // flow rate of steam
h_h2 = 140 // kJ/kg // enthalpy of condensate
h_h1 = 2570 // kJ/kg // inlet enthalpy of steam
t1 = 25 // °C //inlet temperature of cooling water
t2 = 36 // °C //exit temperature of cooling water
c = 4.189 // kJ/kg deg // specific heat of water
//Solution
mc = -1*(mh*(h_h2-h_h1))/(c*(t2-t1)) // kg/s //mass flow rate of cooling water
printf("Mass flow rate of cooling water = %.2f kg/s",mc)
