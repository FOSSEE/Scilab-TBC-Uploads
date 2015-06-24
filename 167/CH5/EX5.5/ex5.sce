//example 5
//acceleration of steam in nozzle
clear
clc
P1=250  //initial pressure of steam in psia
T1=700 //initial temperature of steam in °F 
disp('The specific volume and enthalpy of steam at the nozzle inlet are ')
v1=2.6883  //specific volume of steam at the nozzle inlet in ft3/lbm
h1=1371.4 // specific enthalpy of steam at the nozzle inletin Btu/lbm
A1=0.2 //inlet area in ft^2
M=10 // mass flow rate of steam through nozzle in lbm/s
V1=M*v1/A1 // inlet velocity in ft/s
qout=1.2 // heat loss in Btu/lbm
v2=900 //exit velocity in ft/s
h2=h1-qout-(v2^2-v1^2)/(2*25037) // enthalpy after exit 
disp('from steam table, the temp. corresponding to this pressure and specifi enthalpy is ')
T2=662.0 ///in °F
printf("\n Hence,the inlet velocity is = %.1f ft/s. \n",V1);
printf("\n The exit temp. of the seam  is = %.0f F. \n",T2);