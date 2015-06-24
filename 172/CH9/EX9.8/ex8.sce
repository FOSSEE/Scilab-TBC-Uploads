//example 8
//Velocity in exit flow
clear
clc
disp('From Steam Tables, for liquid water at 20 C')
vf=0.001002 //in m^3/kg
v=vf
Pi=300 //Line pressure in kPa
Po=100 //in kPa
Ve=(2*v*(Pi-Po)*1000)^0.5 //velocity in the exit flow
printf(" \n Hence, an ideal nozzle can generate upto Ve=%.0f m/s in the exit flow. \n",Ve)