//example 6
//calculating pressure
clear
clc
dg=750 //density of gaasoline in kg/m^3
dR=1206 //density of R-134a in kg/m^3
H=7.5 //height of storage tank in metres
g=9.807 //acc. due to gravity in m/s^2
dP1=dg*g*H/1000 //in kPa
Ptop1=101 //atmospheric pressure in kPa
P1=dP1+Ptop1
disp('hence,pressure at the bottom of storage tank if fluid is gasoline is 156.2 kPa')
dP2=dR*g*H/1000 //in kPa
Ptop2=1000 //top surface pressure in kPa
P2=dP2+Ptop2
printf("\n hence, pressure at the bottom of storage tank if liquid is R-134a is P2 = %.0f kPa. \n",P2)