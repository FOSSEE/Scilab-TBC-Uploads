//example 5
//pressure inside vessel
clear
clc
dm=13590 //density of mercury in kg/m^3
H=0.24 //height difference between two columns in metres
g=9.80665 //acc. due to gravity  in m/s^2
dP=dm*H*g //pressure difference in Pa
Patm=13590*0.750*9.80665 //Atmospheric Pressure in Pa
Pvessel=dP+Patm //Absolute Pressure inside vessel in Pa
Pvessel=Pvessel/101325//Absolute Pressure inside vessel in atm
printf("\n hence, the absolute pressure inside vessel is Pvessel = %.3f atm. \n",Pvessel)