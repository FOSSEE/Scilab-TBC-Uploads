//example 2
//Total Differential versus Partial Differential
clear
clc
R=0.287 //Universal gas constant kPa-m3/kg-K
v=(0.86+0.87)/2 //average value m^3/kg
T=(300+302)/2 //average temp. in kelvins
dT=302-300 //change in tep. in K
dv=0.87-0.86 //change in volume in m^3/kg
dP=R*dT/v-R*T*dv/v^2 //Change in the pressure in kPa
printf("\n Hence, the change in the pressure of air is = %.3f kPa. \n",dP);