//example 7
//work required to pump water isentropically 
clear
clc
P1=100 //initial pressure in kPa
P2=5000 //final pressure in kPa
v=0.001004 //specific volume in m^3/kg
w=v*(P2-P1) //work required to pump water isentropically
printf("\n hence,work required to pump water isentropically  is w=%.2f kJ/kg.\n",w)