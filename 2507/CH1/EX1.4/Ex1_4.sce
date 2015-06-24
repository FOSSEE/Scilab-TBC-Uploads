clc
clear
printf("Example 1.4 | Page number 10 \n\n");
//find the steam pressure.

//Given Data
Pg = 12E5 //in N/m^2 //inlet gauge pressure
Pvac = 75 / 1000 //in m Hg //exit gauge pressure
atmosphericPressure = 760 / 1000 //in m Hg //atmospheric pressure
density = 13.6 * 10^3 //kg/m^3 //density of mercury
g = 9.805 //in m/s^2 //acceleration due to gravity
 
printf("At inlet to the turbine, Pg = %.3f N/m^2 \n",Pg);
printf("At the exit, Pvac = %.3f m Hg \n",Pvac);
printf("Atmospheric pressure = %.3f m Hg \n",atmosphericPressure);
printf("Density of mercury = %.3f kg/m^3 \n",density);
printf("Acceleration due to gravity = %.3f m/s^2 \n\n",g);

//Solution
Pvac = density*g*Pvac //Pvac in N/m^2 
atmosphericPressure = density*g*atmosphericPressure //atmospheric pressure in N/m^2
PabsInlet = atmosphericPressure + Pg //in N/m^2 //absolute inlet pressure
PabsExit = atmosphericPressure - Pvac //in N/m^2 //absolute exit pressure
printf("At the inlet, absolute pressure = %.3f kPa \n",PabsInlet*.001);
printf("At the exit, absolute pressure = %.3f kPa \n",PabsExit*.001);

