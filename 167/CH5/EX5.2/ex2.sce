//example 2
//discharge of water from a tank
clear
clc
h0=4 //height of cylindrical water tank in ft
h2=2 //final water level in tank in ft
g=32.2 //acc. due to gravity in ft/s^2
Dt=3*12 //diameter of tank in inches
Djet=0.5 //diameter of water jet in inches
t=(h0^0.5-h2^0.5)*(Dt)^2/((Djet)^2*(g/2)^0.5) //time taken for water level to fall to half of its initial value in seconds
printf("\n Hence, the time taken for water level to fall to half of its initial value is = %.1f min. \n",t/60);