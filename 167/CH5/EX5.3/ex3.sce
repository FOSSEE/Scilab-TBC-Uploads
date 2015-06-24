//example 3
//energy transport by mass
clear
clc
vf=0.001053 //specific volume of saturated liquid water  in m3/kg
vg=1.1594  //specific volume of water vapour in m3/kg
ug=2519.2  //specific internal energy of water vapour kJ/kg
hg=2693.1  //specific enthalpy of water vapour kJ/kg
disp('Saturation conditions exist in a pressure cooker at all times after the steady operating conditions are established')
disp(' Therefore, the liquid has the properties of saturated liquid and the exiting steam has the properties of saturated vapor at the operating pressure.')
m=0.6/(vf*1000) //reduction in mass of liquid in pressure cooker in kg
M=m/(40*60) //mass flow rate of steam in kg/s
A=8*10^-6 //exit area in m^2
V=M*vg/A //exit velocity in m/s
e=hg-ug //flow energy of steam in kJ/kg
TE=hg //total nergy of steam in kJ/kg
E=M*hg //energy flow rate of steam leaving cooker in kW
printf("\n Hence,The mass flow rate of the steam is = %.6f kg/s. \n",M); 
printf("\n The exit velocity is = %.1f m/s. \n",V);
printf("\n The total energy of the steam is = %.1f kJ/kf. \n",TE);
printf("\n The flow energy of the steam is = %.1f kJ/kg. \n",e);
printf("\n The rate at which energy leaves the cooker by steam is = %.3f kW. \n",E);